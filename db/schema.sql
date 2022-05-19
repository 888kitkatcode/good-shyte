CREATE DATABASE goodshyt_app;

\c goodshyt_app

CREATE TABLE tvseries (
    id SERIAL PRIMARY KEY,
    name TEXT,
    image_url TEXT,
    description TEXT,
    where_to_watch TEXT
);

CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    name TEXT,
    email TEXT,
    password_digest TEXT
);

INSERT INTO tvseries (name, image_url, description, where_to_watch)
VALUES
('Ozark', 
'https://occ-0-2794-2219.1.nflxso.net/dnm/api/v6/9pS1daC2n6UGc3dUogvWIPMR_OU/AAAABTAGyscUE6-GfVBGQlhX-sk0VDJKuErDHf7bSOn96FaVPNhvaklW9VdnJumDiNW0mYRfUKVIwdj9_Q1_kCxcdqL-5ftXlJSY1X_Mm8zIyxjDp6Gwyz07mSRN.jpg?r=88f', 
'Dark, stressful and gripping!', 
'Netflix'),
('Friends', 
'https://images.immediate.co.uk/production/volatile/sites/3/2019/09/GettyImages-143479801-c6eefca.jpg?quality=90&crop=8px,437px,2431px,1619px&resize=980,654', 
'Funny, light-hearted, background show',
'Netflix'),
('Sherlock',
'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQdyslxyvpxHRajjqAuZT4BJNkiBU1QiQDLUqv2m9GdpxoCOchBAbv6QM5WfmfyNrXyXXM&usqp=CAU',
'Mysterious, interesting, funny',
'Stan');

ALTER TABLE tvseries ADD COLUMN user_id INTEGER;

ALTER TABLE tvseries ADD COLUMN user_name TEXT;

ALTER TABLE tvseries ADD COLUMN date_posted DATE;

-- CREATE TABLE comments (
--     id SERIAL PRIMARY KEY,
--     user_id
--     series_id
--     comment TEXT,
--     date 
-- )