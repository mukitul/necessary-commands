# Oracle

## Copy Data from One Schema to Another
### Create a new Table and Insert data from Another Schema
```
CREATE TABLE NEW_TABLE_NAME AS SELECT * FROM SOURCE_SCHEMA_NAME.SOURCE_TABLE_NAME;
```

### Create a new Table with only Column from Another Schema
```
CREATE TABLE NEW_TABLE_NAME AS SELECT * FROM SOURCE_SCHEMA_NAME.SOURCE_TABLE_NAME WHERE 1=0;
```

### Insert Data in a Existing Table from Another Schema
```
INSERT INTO TABLE_NAME SELECT * FROM SOURCE_SCHEMA_NAME.SOURCE_TABLE_NAME;
```


## Grant Privilege

## Execute this query from table owner schema
```
GRANT SELECT ON TABLE_NAME TO TARGET_SCHEMA_NAME;
```
Above query will only grant `SELECT` operation.

```
GRANT SELECT,DELETE,INSERT,UPDATE ON TABLE_NAME TO TARGET_SCHEMA_NAME
```
Above query will only grant `SELECT,DELETE,INSERT,UPDATE` operation.

## GENERIC_FORMAT 
```
GRANT privilege-type ON [TABLE] { table-Name | view-Name } TO grantees
```


