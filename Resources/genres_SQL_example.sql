<<<<<<< HEAD
select m.id, m.title, m.status, m.release_date
from movies_metadata m left join
genres g on g.id = m.id
=======
select m.id, m.title, m.status, m.release_date
from movies_metadata m left join
genres g on g.id = m.id
>>>>>>> main
where g.Fantasy is True