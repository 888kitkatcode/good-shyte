CREATE DATABASE goodshyt_app;

\c goodshyt_app

CREATE TABLE tvseries (
    id SERIAL PRIMARY KEY,
    name TEXT,
    image_url TEXT,
    description TEXT,
    where_to_watch TEXT,
    user_id INTEGER,
    user_name TEXT,
    date_posted DATE
);

CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    name TEXT,
    email TEXT,
    password_digest TEXT
);

-- Users:
-- Name: TestA
-- Email: a
-- pw: 123

-- Name: TestB
-- Email: b
-- pw: 123

-- Name: TestC
-- Email: c
-- pw: 123

INSERT INTO tvseries (name, image_url, description, where_to_watch, user_id, user_name, date_posted)
VALUES
('Ozark', 
'https://occ-0-2794-2219.1.nflxso.net/dnm/api/v6/9pS1daC2n6UGc3dUogvWIPMR_OU/AAAABTAGyscUE6-GfVBGQlhX-sk0VDJKuErDHf7bSOn96FaVPNhvaklW9VdnJumDiNW0mYRfUKVIwdj9_Q1_kCxcdqL-5ftXlJSY1X_Mm8zIyxjDp6Gwyz07mSRN.jpg?r=88f', 
'Dark, stressful and gripping!', 
'Netflix',
2,
2022-05-18),

('Friends', 
'https://images.immediate.co.uk/production/volatile/sites/3/2019/09/GettyImages-143479801-c6eefca.jpg?quality=90&crop=8px,437px,2431px,1619px&resize=980,654', 
'Funny, light-hearted, background show',
'Netflix',
3,
2022-05-18),

('Sherlock',
'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQdyslxyvpxHRajjqAuZT4BJNkiBU1QiQDLUqv2m9GdpxoCOchBAbv6QM5WfmfyNrXyXXM&usqp=CAU',
'Mysterious, interesting, funny',
'Stan',
1,
2022-05-17);

CREATE TABLE user_comments (
    id SERIAL PRIMARY KEY,
    user_id INTEGER,
    tvseries_id INTEGER,
    user_name TEXT,
    comment TEXT,
    date_commented DATE 
);

 -- TestB commenting on TestA recommendation
INSERT INTO user_comments(user_id, tvseries_id, user_name, comment)
VALUES
(2,
13,
'TestB',
'Agree! It is amazing!'
);