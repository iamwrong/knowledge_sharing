# Create Hive/Impala tables over hive with style

## Motivation

Manually creating hive/impala table create scripts not only is a dedious and boring operation, but *also prone to error*. This is, especialy, problematic on tables with tables with a big number of fields or/and
complex data types.


## How to do it

from the [cloudera create table documentation]

```
CREATE [EXTERNAL] TABLE [IF NOT EXISTS] [db_name.]table_name
  LIKE { [db_name.]table_name | PARQUET 'hdfs_path_of_parquet_file' }
  [COMMENT 'table_comment']
  [PARTITIONED BY (col_name data_type [COMMENT 'col_comment'], ...)]
  [STORED AS file_format]
  [LOCATION 'hdfs_path']
```

from the table you can generate the DDL (if you need it for some reason)

```
SHOW CREATE TABLE [database_name].table_name
```

## Known problems

if a given file name has ilegal characters eg. `.` impala/hive seems not to like it.

todo: check the error hapening is really that or if impala doe not like
the nested data type very well

## Guidelines on creating tables files (parquet, avro, etc) maped on tables

### Snake Case on field names

[Snake Case] will look nice on field names. Camel Case, Kebab Case and others do not look so nice

### Respect the field order

Whereas Hive does not mind, Imapala does mind the order of the field 
 names show up. Therefore the field names on the table DDL should be 
 in the exact same order as they are in the files.
 Therefore:
 
 * Do not try to reorder the file names on the table DDL (do it at file
  level if possible).
 * Make the file name order deterministic (do not let spark, flink, etc
 decide for you); You have no guarantee that in the next run of your job
 the order of your fields will be the same. 
 * If you need new fields in your table, add them in the end (this is, 
 respecting the order); or regenerate all the files (reprocess all data) 
 and update the table DDL.

 Please keep in mind Hive uses the Java implementations amd Impala uses C++ implementations, this is the reason why certain things work on hive 
 and do not work on Impala.



[cloudera create table documentation]: https://www.cloudera.com/documentation/enterprise/5-8-x/topics/impala_create_table.html

[Snake Case]: https://en.wikipedia.org/wiki/Snake_case
