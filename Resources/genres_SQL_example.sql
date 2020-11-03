select m.id, m.title, m.status, m.release_date
from movies_metadata m left join
genres g on g.id = m.id
where g.Fantasy is True