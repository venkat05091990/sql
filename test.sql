DECLARE @json NVARCHAR(2048) = N'{
   "String_value": "John",
   "DoublePrecisionFloatingPoint_value": 45,
   "DoublePrecisionFloatingPoint_value": 2.3456,
   "BooleanTrue_value": true,
   "BooleanFalse_value": false,
   "Null_value": null,
   "Array_value": ["a","r","r","a","y"],
   "Object_value": {"obj":"ect"}
}';

SELECT ID, Quantity FROM OpenJson(@json) WITH(ID   NVARCHAR(200) '$.String_value', 	Quantity   NVARCHAR(200) '$.DoublePrecisionFloatingPoint_value' );
