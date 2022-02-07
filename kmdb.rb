# In this assignment, you'll be using the domain model from hw1 (found in the hw1-solution.sql file)
# to create the database structure for "KMDB" (the Kellogg Movie Database).
# The end product will be a report that prints the movies and the top-billed
# cast for each movie in the database.

# To run this file, run the following command at your terminal prompt:
# `rails runner kmdb.rb`

# Requirements/assumptions
#
# - There will only be three movies in the database – the three films
#   that make up Christopher Nolan's Batman trilogy
# - Movie data includes the movie title, year released, MPAA rating,
#   and director
# - A movie has a single director
# - A person can be the director of and/or play a role in a movie
# - Everything you need to do in this assignment is marked with TODO!

# Rubric
# 
# There are three deliverables for this assignment, all delivered within
# this repository and submitted via GitHub and Canvas:
# - Generate the models and migration files to match the domain model from hw1.
#   Execute the migration files to create the tables in the database. Add the
#   relevant association methods in each model. (5 points)
# - Insert the "Batman" sample data using ruby code. Do not use hard-coded ids and
#   delete any existing data beforehand so that each run of this script does not
#   create duplicate data. (5 points)
# - Query the data and loop through it to display output similar to the following
#   sample "report". (10 points)

# Submission
# 
# - "Use this template" to create a brand-new "hw2" repository in your
#   personal GitHub account, e.g. https://github.com/<USERNAME>/hw2
# - Do the assignment, committing and syncing often
# - When done, commit and sync a final time, before submitting the GitHub
#   URL for the finished "hw2" repository as the "Website URL" for the 
#   Homework 2 assignment in Canvas

# Successful sample output is as shown:

# Movies
# ======

# Batman Begins          2005           PG-13  Christopher Nolan
# The Dark Knight        2008           PG-13  Christopher Nolan
# The Dark Knight Rises  2012           PG-13  Christopher Nolan

# Top Cast
# ========

# Batman Begins          Christian Bale        Bruce Wayne
# Batman Begins          Michael Caine         Alfred
# Batman Begins          Liam Neeson           Ra's Al Ghul
# Batman Begins          Katie Holmes          Rachel Dawes
# Batman Begins          Gary Oldman           Commissioner Gordon
# The Dark Knight        Christian Bale        Bruce Wayne
# The Dark Knight        Heath Ledger          Joker
# The Dark Knight        Aaron Eckhart         Harvey Dent
# The Dark Knight        Michael Caine         Alfred
# The Dark Knight        Maggie Gyllenhaal     Rachel Dawes
# The Dark Knight Rises  Christian Bale        Bruce Wayne
# The Dark Knight Rises  Gary Oldman           Commissioner Gordon
# The Dark Knight Rises  Tom Hardy             Bane
# The Dark Knight Rises  Joseph Gordon-Levitt  John Blake
# The Dark Knight Rises  Anne Hathaway         Selina Kyle

# Delete existing data, so you'll start fresh each time this script is run.
# Use `Model.destroy_all` code.
# TODO!
Movie.destroy_all
Person.destroy_all
Actor.destroy_all
Role.destroy_all

# Generate models and tables, according to the domain model
# TODO!
##rails generate model Movies
##rails generate model People
##rails generate model Roles

# Insert data into your database that reflects the sample data shown above
# Do not use hard-coded foreign key IDs.
# TODO!

values = { title: "Batman Begins", 
            year_released: "2005", 
            rated: "PG-13",
            person_id: "1"
        }

batman_begins = Movie.new(values)
batman_begins.save

new_movie = Movie.new
new_movie.title = "The Dark Knight"
new_movie.year_released = "2008"
new_movie.rated = "PG-13"
new_movie.person_id = "1"
new_movie.save

new_movie = Movie.new
new_movie.title = "The Dark Knight Rises"
new_movie.year_released = "2012"
new_movie.rated = "PG-13"
new_movie.person_id = "1"
new_movie.save

puts "There are now #{Movie.all.count} movies."

##Creates people

new_person = Person.new
new_person.name = "Christian Bale"
new_person.save

new_person = Person.new
new_person.name = "Michael Caine"
new_person.save

new_person = Person.new
new_person.name = "Liam Neeson"
new_person.save

new_person = Person.new
new_person.name = "Katie Holmes"
new_person.save

new_person = Person.new
new_person.name = "Gary Oldman"
new_person.save

new_person = Person.new
new_person.name = "Heath Ledger"
new_person.save

new_person = Person.new
new_person.name = "Aaron Eckhart"
new_person.save

new_person = Person.new
new_person.name = "Maggie Gyllenhaal"
new_person.save

new_person = Person.new
new_person.name = "Tom Hardy"
new_person.save

new_person = Person.new
new_person.name = "Joseph Gordon-Levitt"
new_person.save

new_person = Person.new
new_person.name = "Anne Hathaway"
new_person.save

new_person = Person.new
new_person.name = "Christopher Nolan"
new_person.save

##puts "There are now #{Person.all.count} people."

##Creates people IDs
bale = Role.where({ role: "Batman Begins"})[0]
puts begins.id
begins_id = begins.id


##Creates IDs for movies

begins = Movie.where({ title: "Batman Begins"})[0]
puts begins.id
begins_id = begins.id

dark_knight = Movie.where({ title: "The Dark Knight"})[0]
puts dark_knight.id
dark_knight_id = dark_knight.id

rises = Movie.where({ title: "The Dark Knight Rises"})[0]
puts rises.id
rises_id = rises.id

role = Role.new
role.movie_id = begins.id
role.person_id = ""
role.character_name= "Bruce Wayne"
role.save



#actor = Actor.new
#actor.name= "Michael Caine"
#actor.movie_id = begins.id
#actor.save

puts "There are now #{Actor.all.count} actors."

# Prints a header for the movies output
puts "Movies"
puts "======"
puts ""

# Query the movies data and loop through the results to display the movies output
# TODO!

# Prints a header for the cast output
puts ""
puts "Top Cast"
puts "========"
puts ""

# Query the cast data and loop through the results to display the cast output for each movie
# TODO!
