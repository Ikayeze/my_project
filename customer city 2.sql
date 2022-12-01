select DISTINCT s.supplierid,p.productname,p.categoryid, sum(p.unitsinstock), c.city as customer_city,s.City as supplier_city
from Products p
join suppliers s on s.supplierid = p.supplierid
join orders o on o.ShipCountry  = s.country
join Customers c on c.CustomerID  = o.CustomerID 
group by s.SupplierID 
order by sum(p.UnitsInStock)  desc;