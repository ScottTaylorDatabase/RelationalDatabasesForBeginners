SELECT 
"Customer"."FirstName",
"Customer"."LastName",
"Orders"."OrderDate",
"Orders"."ShippedDate",
"Orders"."ItemName",
"Orders"."ItemNumber",
"Orders"."ItemQuantity",
"Orders"."Price"
FROM "Orders"
inner join "Customer" on "Customer"."Id" = "Orders"."CustomerId"
order by "Customer"."LastName"
where "Customer"."CustomerNumber" = 9184