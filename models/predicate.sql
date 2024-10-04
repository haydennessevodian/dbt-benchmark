{{ test_includes() }}

SELECT
    orderkey,
    partkey,
    suppkey,
    shipmode,
    shipinstruct,
    comment
from lineitem
where 
    orderkey % 10 = 0 
    OR orderkey % 9 = 0 
    OR orderkey % 8 = 0 
    OR linenumber = 2 
    OR linenumber = 4 
    OR quantity > 40000 
    OR discount < 0.03 
    OR shipmode = 'MAIL' 
    OR comment LIKE '%BOLD%'