# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'rest-client'


def get_ficiton_books
  gbf_url = "https://www.googleapis.com/books/v1/volumes?q=subject:fiction&key=#{ENV["GB_API_KEY"]}"
  response = RestClient.get("#{gbf_url}")
  books = JSON.parse(response)

  books_array = books['items']

  books_array.each do |book|
    if book['volumeInfo']['title'] && book['volumeInfo']['description'] && book['volumeInfo']['ratingsCount'] && book['volumeInfo']['imageLinks']['thumbnail'] &&
      Book.find_by(title: book['volumeInfo']['title']).nil?

        Book.create(title: book['volumeInfo']['title'],
        description: book['volumeInfo']['description'],
        average_rating: book['volumeInfo']['averageRating'],
        number_of_ratings: book['volumeInfo']['ratingsCount'],
        thumbnail: book['volumeInfo']['imageLinks']['thumbnail'],
        date_published: book['volumeInfo']['publishedDate'],
        publisher: book['volumeInfo']['publisher'],
        subtitle: book['volumeInfo']['subtitle'],
        page_count: book['volumeInfo']['pageCount'],
        authors: book['volumeInfo']['authors'])
        p book['volumeInfo']['title']
        p book['volumeInfo']['ratingsCount']
    end
  end
end

def get_nonficiton_books
  gbnf_url = "https://www.googleapis.com/books/v1/volumes?q=subject:nonfiction&key=#{ENV["GB_API_KEY"]}"
  response = RestClient.get("#{gbnf_url}")
  books = JSON.parse(response)

  books_array = books['items']

  books_array.each do |book|
    if book['volumeInfo']['title'] && book['volumeInfo']['description'] && book['volumeInfo']['ratingsCount'] && book['volumeInfo']['imageLinks']['thumbnail'] &&
      Book.find_by(title: book['volumeInfo']['title']).nil?

        Book.create(title: book['volumeInfo']['title'],
        description: book['volumeInfo']['description'],
        average_rating: book['volumeInfo']['averageRating'],
        number_of_ratings: book['volumeInfo']['ratingsCount'],
        thumbnail: book['volumeInfo']['imageLinks']['thumbnail'],
        date_published: book['volumeInfo']['publishedDate'],
        publisher: book['volumeInfo']['publisher'],
        subtitle: book['volumeInfo']['subtitle'],
        page_count: book['volumeInfo']['pageCount'],
        authors: book['volumeInfo']['authors'])
        p book['volumeInfo']['title']
        p book['volumeInfo']['ratingsCount']
    end
  end
end

def get_fantasy_books
  gbfan_url = "https://www.googleapis.com/books/v1/volumes?q=subject:fantasy&key=#{ENV["GB_API_KEY"]}"
  response = RestClient.get("#{gbfan_url}")
  books = JSON.parse(response)

  books_array = books['items']

  books_array.each do |book|
    if book['volumeInfo']['title'] && book['volumeInfo']['description'] && book['volumeInfo']['ratingsCount'] && book['volumeInfo']['imageLinks']['thumbnail'] &&
      Book.find_by(title: book['volumeInfo']['title']).nil?

        Book.create(title: book['volumeInfo']['title'],
        description: book['volumeInfo']['description'],
        average_rating: book['volumeInfo']['averageRating'],
        number_of_ratings: book['volumeInfo']['ratingsCount'],
        thumbnail: book['volumeInfo']['imageLinks']['thumbnail'],
        date_published: book['volumeInfo']['publishedDate'],
        publisher: book['volumeInfo']['publisher'],
        subtitle: book['volumeInfo']['subtitle'],
        page_count: book['volumeInfo']['pageCount'],
        authors: book['volumeInfo']['authors'])
        p book['volumeInfo']['title']
        p book['volumeInfo']['ratingsCount']
    end
  end
end

def get_mystery_books
  gbm_url = "https://www.googleapis.com/books/v1/volumes?q=subject:mystery&key=#{ENV["GB_API_KEY"]}"
  response = RestClient.get("#{gbm_url}")
  books = JSON.parse(response)

  books_array = books['items']

  books_array.each do |book|
    if book['volumeInfo']['title'] && book['volumeInfo']['description'] && book['volumeInfo']['ratingsCount'] && book['volumeInfo']['imageLinks']['thumbnail'] &&
      Book.find_by(title: book['volumeInfo']['title']).nil?

        Book.create(title: book['volumeInfo']['title'],
        description: book['volumeInfo']['description'],
        average_rating: book['volumeInfo']['averageRating'],
        number_of_ratings: book['volumeInfo']['ratingsCount'],
        thumbnail: book['volumeInfo']['imageLinks']['thumbnail'],
        date_published: book['volumeInfo']['publishedDate'],
        publisher: book['volumeInfo']['publisher'],
        subtitle: book['volumeInfo']['subtitle'],
        page_count: book['volumeInfo']['pageCount'],
        authors: book['volumeInfo']['authors'])
        p book['volumeInfo']['title']
        p book['volumeInfo']['ratingsCount']
    end
  end
end

def get_science_books
  gbs_url = "https://www.googleapis.com/books/v1/volumes?q=subject:science&key=#{ENV["GB_API_KEY"]}"
  response = RestClient.get("#{gbs_url}")
  books = JSON.parse(response)

  books_array = books['items']

  books_array.each do |book|
    if book['volumeInfo']['title'] && book['volumeInfo']['description'] && book['volumeInfo']['ratingsCount'] && book['volumeInfo']['imageLinks']['thumbnail'] &&
      Book.find_by(title: book['volumeInfo']['title']).nil?

        Book.create(title: book['volumeInfo']['title'],
        description: book['volumeInfo']['description'],
        average_rating: book['volumeInfo']['averageRating'],
        number_of_ratings: book['volumeInfo']['ratingsCount'],
        thumbnail: book['volumeInfo']['imageLinks']['thumbnail'],
        date_published: book['volumeInfo']['publishedDate'],
        publisher: book['volumeInfo']['publisher'],
        subtitle: book['volumeInfo']['subtitle'],
        page_count: book['volumeInfo']['pageCount'],
        authors: book['volumeInfo']['authors'])
        p book['volumeInfo']['title']
        p book['volumeInfo']['ratingsCount']
    end
  end
end

def get_comedy_books
  gbc_url = "https://www.googleapis.com/books/v1/volumes?q=subject:comedy&key=#{ENV["GB_API_KEY"]}"
  response = RestClient.get("#{gbc_url}")
  books = JSON.parse(response)

  books_array = books['items']

  books_array.each do |book|
    if book['volumeInfo']['title'] && book['volumeInfo']['description'] && book['volumeInfo']['ratingsCount'] && book['volumeInfo']['imageLinks']['thumbnail'] &&
      Book.find_by(title: book['volumeInfo']['title']).nil?

        Book.create(title: book['volumeInfo']['title'],
        description: book['volumeInfo']['description'],
        average_rating: book['volumeInfo']['averageRating'],
        number_of_ratings: book['volumeInfo']['ratingsCount'],
        thumbnail: book['volumeInfo']['imageLinks']['thumbnail'],
        date_published: book['volumeInfo']['publishedDate'],
        publisher: book['volumeInfo']['publisher'],
        subtitle: book['volumeInfo']['subtitle'],
        page_count: book['volumeInfo']['pageCount'],
        authors: book['volumeInfo']['authors'])
        p book['volumeInfo']['title']
        p book['volumeInfo']['ratingsCount']
    end
  end
end

def User.digest(string)
  cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST :
                                                BCrypt::Engine.cost
  BCrypt::Password.create(string, cost: cost)
end


puts "starting books"

get_ficiton_books()
get_nonficiton_books()
get_fantasy_books()
get_mystery_books()
get_comedy_books()
get_science_books()

puts "books seeded"

puts "starting users"

Mar = User.create("username" => "MarMarBinks", "bio" => "I like dogs and baking.", "avatar" => "", "password_digest" => "#{User.digest('mar')}")
Charlie = User.create("username" => "CharBar1", "bio" => "I'm a garbage human.", "avatar" => "", "password_digest" => "#{User.digest('charlie')}")
May = User.create("username" => "MayBay1", "bio" => "I like to laugh without smiling.", "avatar" => "", "password_digest" => "#{User.digest('may')}")
Chris = User.create("username" => "ChrisBliss1", "bio" => "I like cars.", "avatar" => "", "password_digest" => "#{User.digest('chris')}")

puts "users seeded"
