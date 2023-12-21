# DELETE p2 
# from Person p1, Person p2
# ON p1.email=p2.email AND p1.id < p2.id;


# USIN CARTISAN PRODUCT/CROSS JOIN
delete p2 from person p1,person p2 
where p1.email=p2.email and p1.id<p2.id;

