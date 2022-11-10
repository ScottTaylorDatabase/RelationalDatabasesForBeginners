SELECT 
"Customer"."FirstName",
"Customer"."LastName",
--"Orders"."Id",
"Orders"."OrderDate",
"Orders"."ShippedDate",
"Orders"."ItemName",
"Orders"."ItemNumber",
"Orders"."ItemQuantity",
"Orders"."Price"
FROM "Customer"
left join "Orders" on "Customer"."Id" = "Orders"."CustomerId"
order by "Customer"."LastName"