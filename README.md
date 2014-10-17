---
  tags: sinatra, activerecord, post
  language: ruby
  resources: 2
---

# Sinatra Messages

We're going to be build a simple messaging system using Sinatra. We'll be writing out a POST request and handling the data posted to display it in an ERB file.

## Instructions

1. Read up on  [Sinatra Reloader](http://www.sinatrarb.com/contrib/reloader.html).

2. The contents of `bin/post_message.rb` must submit a `POST` request to `localhost:9292` (this running sinatra application). It should post the to, from, and content variables along with the request. Lookup how to submit POST requests using net/http and how to submit data along with that request.

3. Build out the post '/' route in `app.rb` to take the incoming data and create a message from it. Note that we're persisting with ActiveRecord; check out the migration to see what data should be persisted.

4. Edit `views/messages.erb` to iterate through all the `@messages` and display the data.

## Resources

* [Sinatra Up and Running](http://books.flatironschool.com/books/101) - [Chapter 1 Taking the Stage](http://books.flatironschool.com/books/101), page 15
* [Sinatra Up and Running](http://books.flatironschool.com/books/101) - [Fundamentals](http://books.flatironschool.com/books/101), page 29