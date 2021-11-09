Listing existing rows in the table
SELECT * FROM bookmarks;

Create four link entries into table
INSERT INTO bookmarks VALUES(1, 'http://www.makersacademy.com');
INSERT INTO bookmarks VALUES(2, 'http://www.google.com/');
INSERT INTO bookmarks VALUES(3, 'http://www.destroyallsoftware.com');
INSERT INTO bookmarks VALUES(4, 'https://www.bbc.co.uk/news');


# Delete link with URL http://www.google.com/
DELETE FROM bookmarks
 WHERE (id = 2);

# Update the http://www.destroyallsoftware.com link to http://www.twitter.com using an UPDATE statement.
UPDATE bookmarks
 SET url = 'http://www.twitter.com'
 WHERE url = 'http://www.destroyallsoftware.com';

