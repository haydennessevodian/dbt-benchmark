{{ test_includes() }}

select
    sum(lineitem.orderkey) as s1,
    avg(lineitem.partkey) as a1,
    sum(lineitem.suppkey) as s2,
    avg(lineitem.linenumber) as a2,
    sum(lineitem.quantity) as s3,
    avg(lineitem.extendedprice) as a3,
    sum(lineitem.discount) as s4,
    avg(lineitem.tax) as a4,
    count(*) as c
from
    lineitem
where
    lineitem.linenumber <= 3
group by
    lineitem.suppkey