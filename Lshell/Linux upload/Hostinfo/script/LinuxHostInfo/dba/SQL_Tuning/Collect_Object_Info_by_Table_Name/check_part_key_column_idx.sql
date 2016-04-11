SELECT
PKC.OBJECT_TYPE,
PKC.OWNER||'.'||PKC.NAME,
PKC.COLUMN_NAME,
PKC.COLUMN_POSITION 
FROM DBA_PART_KEY_COLUMNS PKC,DBA_INDEXES I
WHERE 
I.OWNER=PKC.OWNER AND I.INDEX_NAME=PKC.NAME
AND I.TABLE_owner='&&v_owner'
and I.TABLE_name='&&v_table_name'
order by 
1 desc,2,4
;