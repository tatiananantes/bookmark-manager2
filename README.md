# Bookmarks

## User stories 
```
As a user 
So that I can visit my regular web pages faster
I’d like to be shown a list of my bookmarks

As a user 
I want to be able to add a bookmark 
So that I can easily access them later 

As a user 
I want to be able to delete a bookmark
So that I can remove it from my list

As a user
I want to be able to update a bookmark
So that I can keep my list up to date

```

## Domain Model
![Domain Model for Bookmark challenge](https://github.com/tatiananantes/bookmark-manager/blob/main/images/domain_model.png)

## To set up the database

Connect to `psql` and create the `bookmark_manager` database:

```
CREATE DATABASE bookmark_manager;
```

To set up the appropriate tables, connect to the database in `psql` and run the SQL scripts in the `db/migrations` folder in the given order.


## To run the Bookmark Manager app:

```
rackup -p 3000
```

To view bookmarks, navigate to `localhost:3000/bookmarks`.


## To run tests:
run db/migrations/01_create_bookmarks_table.sql



