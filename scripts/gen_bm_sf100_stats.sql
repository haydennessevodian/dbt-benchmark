CREATE TABLE vast."tesseract/benchmark/tpch/sf100_stats".customer 
(
    custkey bigint,         
    name varchar,       
    address varchar,    
    nationkey bigint,       
    phone varchar,      
    acctbal double,         
    mktsegment varchar, 
    comment varchar     
);

CREATE TABLE vast."tesseract/benchmark/tpch/sf100_stats".lineitem
(      
    orderkey bigint,          
    partkey bigint,           
    suppkey bigint,           
    linenumber integer,       
    quantity double,          
    extendedprice double,     
    discount double,          
    tax double,               
    returnflag varchar,    
    linestatus varchar,    
    shipdate date,            
    commitdate date,          
    receiptdate date,         
    shipinstruct varchar, 
    shipmode varchar,     
    comment varchar        
);

CREATE TABLE vast."tesseract/benchmark/tpch/sf100_stats".nation
(   
    nationkey bigint,    
    name varchar,    
    regionkey bigint,    
    comment varchar  
);

CREATE TABLE vast."tesseract/benchmark/tpch/sf100_stats".orders
(         
    orderkey bigint,           
    custkey bigint,            
    orderstatus varchar,    
    totalprice double,         
    orderdate date,            
    orderpriority varchar, 
    clerk varchar,         
    shippriority integer,      
    comment varchar         
);

CREATE TABLE vast."tesseract/benchmark/tpch/sf100_stats".part
(       
    partkey bigint,        
    name varchar,      
    mfgr varchar,      
    brand varchar,     
    type varchar,      
    size integer,          
    container varchar, 
    retailprice double,    
    comment varchar     
);

CREATE TABLE vast."tesseract/benchmark/tpch/sf100_stats".partsupp
( 
    partkey bigint,      
    suppkey bigint,      
    availqty integer,    
    supplycost double,   
    comment varchar  
);

CREATE TABLE vast."tesseract/benchmark/tpch/sf100_stats".region
(   
    regionkey bigint,    
    name varchar,    
    comment varchar  
);

CREATE TABLE vast."tesseract/benchmark/tpch/sf100_stats".supplier
( 
    suppkey bigint,        
    name varchar,      
    address varchar,   
    nationkey bigint,      
    phone varchar,     
    acctbal double,        
    comment varchar    
);