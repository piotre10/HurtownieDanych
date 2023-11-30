use [cw5]
go
create view CustomerSales
with schemabinding
as
select 
[date],
[time],
[quantity],
[KeyPizza],
[city],
[state],
[country]
from dbo.FactSales fc inner join dbo.DIMCustomers dc on fc.CustomerKey = dc.CustomerKey

go
CREATE UNIQUE CLUSTERED INDEX IX_CustomerSales
ON dbo.CustomerSales([date],[time],[quantity],[KeyPizza],[city],[state],[country])