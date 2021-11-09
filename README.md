# Bookmarks

## User story 

As a user 
So that I can visit my regular web pages faster
I’d like to be shown a list of my bookmarks


## Domain model diagram 

alias user="User"\
alias client="Client(browser)"\
alias controller="Controller(app.rb)"\
alias model="Model(Bookmark class)"\
alias view="View(index.erb file)"


user->client: "types URL in address bar"\
client->controller: "HTTP GET request made"\
controller->model: "Asks for Bookmark.all"\
model->model: "Gets the bookmarks as an array"\
model->controller: "Gives the bookmarks as an array"\
controller->view: "Requests the visuals of bookmarks from erb file"\
view->controller: "Sends the html of the bookmarkers to the controller"\
controller->client: "The browser now has the bookmarks on the webpage"\
client->user: "The user can view the bookmarks on the browser"

<img src="https://imgur.com/f2aYVXi.jpg"/>

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

