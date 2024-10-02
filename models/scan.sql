{{ test_includes() }}

select
    *
from
    lineitem
where
    lineitem.quantity % 3 = 0
    and lineitem.returnflag = 'R'