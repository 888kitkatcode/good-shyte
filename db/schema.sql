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
'https://cdn.vox-cdn.com/thumbor/sK3gMTENF_LR1DhAUl9e3V_5jC4=/0x0:2592x2017/1200x800/filters:focal(1089x801:1503x1215)/cdn.vox-cdn.com/uploads/chorus_image/image/65282724/friendscast.0.0.1429818191.0.jpg', 
'Funny, light-hearted, background show',
'Netflix');

ALTER TABLE tvseries ADD COLUMN user_id INTEGER;

ALTER TABLE tvseries ADD COLUMN user_name TEXT;

-- CREATE TABLE comments (
--     id SERIAL PRIMARY KEY,
--     user_id
--     series_id
--     comment TEXT,
--     date 
-- )