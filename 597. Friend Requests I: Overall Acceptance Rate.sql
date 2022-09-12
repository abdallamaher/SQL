# Write your MySQL query statement below
/*
INPUT
-----
request(sender, reciever)
accept(id, sender_id, reciever_id)

OUTPUT
------
acceptance / requests

CONSTRAINS
-----------
duplicates in both >> once
0.00

*/
-- 440 ms - group by faster even no-indexing
select
round(
ifnull(
(
    select count(*)
    from (
        select requester_id, accepter_id
        from RequestAccepted
        group by requester_id, accepter_id
    ) as T
)
/ 
(
    select count(*)
    from (
        select sender_id, send_to_id
        from FriendRequest
        group by sender_id, send_to_id
    ) as T
)
, 0)
, 2) as accept_rate;

/*
-- 785 ms - distinct should be faster as no-indexing
select
round(
ifnull(
(
    select count(*)
    from (
        select distinct requester_id, accepter_id
        from RequestAccepted
    ) as T
)
/ 
(
    select count(*)
    from (
        select distinct sender_id, send_to_id
        from FriendRequest
    ) as T
)
, 0)
, 2) as accept_rate;
*/


-- 1500 
/*
select round(
    ifnull(
            (
            select count(distinct requester_id, accepter_id) as cnt
            from RequestAccepted
            )
            /
            -- division by zero dont throw error in mysql
            (
            select count(distinct sender_id, send_to_id) as cnt
            from FriendRequest
            )
    , 0.00)
, 2) as accept_rate
*/