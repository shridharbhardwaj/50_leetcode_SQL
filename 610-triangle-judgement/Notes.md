<h2>triangle-judgement Notes</h2><hr>ONE LINER SOLUTION, BEATS 97%

select x,y,z, (select if((x+y>z and y+z>x and x+z>y),'Yes','No') end) as triangle from Triangle t;