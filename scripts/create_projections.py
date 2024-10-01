import argparse
import os

import vastdb

session = vastdb.connect(endpoint=os.environ['VAST_ENDPOINT'],
                         access=os.environ['VAST_ACCESS_KEY'],
                         secret=os.environ['VAST_SECRET_KEY'])

argument_parser = argparse.ArgumentParser()
argument_parser.add_argument("schema")
arguments = argument_parser.parse_args()

with session.transaction() as tx:
    bx: vastdb.bucket.Bucket = tx.bucket("tesseract")
    sx: vastdb.schema.Schema = bx.schema("benchmark")
    sx2 = sx.schema("tpch")
    sx3 = sx2.schema(arguments.schema)

    tbl_customer = sx3.table("customer")
    tbl_customer.create_projection("bm", ["nationkey", "mktsegment", "custkey"], ["name", "address", "acctbal", "phone", "comment"])

    tbl_lineitem = sx3.table("lineitem")
    tbl_lineitem.create_projection("bm", ["shipdate", "suppkey", "partkey", "orderkey"], ["linenumber", "quantity", "extendedprice", "discount", "tax", "returnflag", "linestatus", "commitdate", "receiptdate", "shipinstruct", "shipmode", "comment"])

    tbl_nation = sx3.table("nation")
    tbl_nation.create_projection("bm", ["regionkey", "nationkey"], ["name", "comment"])

    tbl_orders = sx3.table("orders")
    tbl_orders.create_projection("bm", ["orderdate", "orderstatus", "custkey", "clerk"], ["orderkey", "totalprice", "orderpriority", "shippriority", "comment"])

    tbl_part = sx3.table("part")
    tbl_part.create_projection("bm", ["mfgr", "brand", "type", "container"], ["partkey", "name", "size", "retailprice", "comment"])

    tbl_partsupp = sx3.table("partsupp")
    tbl_partsupp.create_projection("bm", ["partkey", "suppkey"], ["availqty", "supplycost", "comment"])

    tbl_region = sx3.table("region")
    tbl_region.create_projection("bm", ["regionkey"], ["name", "comment"])

    tbl_supplier = sx3.table("supplier")
    tbl_supplier.create_projection("bm", ["nationkey", "suppkey"], ["name", "address", "phone", "acctbal"])
