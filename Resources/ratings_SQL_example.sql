<<<<<<< HEAD
select m.id, m.title, m.company, r.rating
from movies_metadata m left join
ratings r on r.id= m.id
=======
select m.id, m.title, m.company, r.rating
from movies_metadata m left join
ratings r on r.id= m.id
>>>>>>> main
where m.title ='Jumanji'