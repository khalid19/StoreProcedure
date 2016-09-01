create proc spGetCustomerOrderDetailByCity
@City nvarchar(50),
@FromDate datetime,
@ToDate datetime
as
begin
select C.Name,C.Email, I.Title,

O.OrderNo, O.Quantity,O.UnitPrice,O.TotatPrice,C.City

from Customer as C

inner join Orders As O

on c.CustomerId=O.CustomerId

inner join Item as I

on O.ItemId=I.ItemId

where( C.City=@City and O.Date between(@FromDate) and (@ToDate))

end




