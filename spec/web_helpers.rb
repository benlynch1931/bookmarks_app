def truncate_test_table
  con = PG.connect(dbname: 'bookmark_manager_test')
  con.exec("TRUNCATE TABLE bookmarks;")
end

def populate_table
  con = PG.connect(dbname: 'bookmark_manager_test')
  con.exec("INSERT INTO bookmarks (title, url) VALUES ('Makers', 'http://www.makersacademy.com');
  INSERT INTO bookmarks (title, url) VALUES ('Destroy All Software', 'http://www.destroyallsoftware.com');
  INSERT INTO bookmarks (title, url) VALUES ('Twitter', 'http://www.twitter.com');
  INSERT INTO bookmarks (title, url) VALUES ('Google', 'http://www.google.com');")
end