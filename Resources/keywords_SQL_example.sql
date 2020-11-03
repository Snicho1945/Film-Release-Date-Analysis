<<<<<<< HEAD
select m.id, m.title, m.company, k.keywords
from movies_metadata m left join
keywords k on k.id= m.id
=======
select m.id, m.title, m.company, k.keywords
from movies_metadata m left join
keywords k on k.id= m.id
>>>>>>> main
where m.title ='GoldenEye'