CREATE DATABASE movies_db
    WITH 
    OWNER = postgres
    ENCODING = 'UTF8'
    CONNECTION LIMIT = -1;

COMMENT ON DATABASE movies_db
    IS 'The Movies Dataset for final project';