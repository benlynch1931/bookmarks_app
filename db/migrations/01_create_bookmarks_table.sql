-- to run:
-- psql bookmark_manager -f 01_create_bookmarks_table.sql
CREATE TABLE bookmarks(
  id SERIAL PRIMARY KEY,
  title VARCHAR(60),
  url VARCHAR(60));
INSERT INTO bookmarks (title, url) VALUES ('Makers', 'http://www.makersacademy.com');
INSERT INTO bookmarks (title, url) VALUES ('Destroy All Software', 'http://www.destroyallsoftware.com');
INSERT INTO bookmarks (title, url) VALUES ('Twitter', 'http://www.twitter.com');
INSERT INTO bookmarks (title, url) VALUES ('Google', 'http://www.google.com');
