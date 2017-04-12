select top 10 count(*) something, d.DepartmentID, d.GroupName from HumanResources.Department D
join HumanResources.EmployeeDepartmentHistory ED
on ed.DepartmentID = d.DepartmentID
group by d.DepartmentID, d.GroupName
having count(*) > 5
order by count(*) asc

select * from HumanResources.Department
where Name in
(select Name from HumanResources.Department
where Name = 'Sales')

select * from HumanResources.Department
where DepartmentID in (1, 2, 3)

select p.FirstName, p.LastName, c.AccountNumber from Sales.Customer c
left join Person.Person p
on p.BusinessEntityID = c.PersonID

select p.FirstName, p.LastName, c.AccountNumber from Sales.Customer c
right join Person.Person p
on p.BusinessEntityID = c.PersonID

select p.FirstName, p.LastName, c.AccountNumber from Sales.Customer c
full outer join Person.Person p
on p.BusinessEntityID = c.PersonID

select p.FirstName, p.LastName, c.AccountNumber from Sales.Customer c
inner join Person.Person p
on p.BusinessEntityID = c.PersonID


INSERT INTO Customers (CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES ('Cardinal', 'Tom B. Erichsen', 'Skagen 21', 'Stavanger', '4006', 'Norway');

UPDATE Customers
SET ContactName='Juan'
WHERE Country='Mexico';