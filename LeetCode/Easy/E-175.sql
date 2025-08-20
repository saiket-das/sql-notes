-- https://leetcode.com/problems/combine-two-tables/description/

SELECT 
    Person.firstName, Person.lastname,
    Address.city, Address.state

FROM Person
LEFT JOIN Address
    ON Person.personId = Address.personId;