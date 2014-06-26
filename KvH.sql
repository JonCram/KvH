select
yearID,
sum(H)
from batting
where yearID >= 1998
group by yearID;

select
yearID,
sum(SO)
from pitching
where yearID >= 1998
group by yearID;