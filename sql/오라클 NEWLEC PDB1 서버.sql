-- getNoticeList
select rownum, notice.* from notice order by regdate desc;

select * from notice;

select * from (
select rownum num, n.* 
from (select * from notice order by regdate desc) n
)
where num between 6 and 10;

select * from(
    select row_number() over (order by regdate desc) num,
        notice.* from notice
)
where num between 5 and 10;

-- getNoticeCount

-- getNotice

-- getNextNotice
select * from notice
where id=(
    select id from notice 
    where regdate > (select regdate from notice where id = 3) 
    and rownum = 1
);

select * from notice order by regdate;

select id from 
    ( select * from (select rownum num, n.*
    from ( select * from notice order by regdate asc) n) where num>3
    ) 
where rownum=1;

select * from (select rownum num, n.*
    from ( select * from notice order by regdate asc) n) where num>3;

-- getPrevNotice

select * from notice order by regdate desc;

select id from (select * from notice order by regdate desc) 
where regdate < (select regdate from notice where id=3) and rownum=1;


insert into notice(id, title, writer_id, content) values (51, '¾È³ç2', 'newlec', 'ez313z3');
