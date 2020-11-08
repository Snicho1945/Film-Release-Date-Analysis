select m.id, m.title, m.status, m.release_date
from movies_metadata m left join
genres g on g.movieId = m.id
where g.Fantasy is True
