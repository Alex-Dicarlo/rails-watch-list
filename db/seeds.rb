require "json"
require "open-uri"
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).

Movie.destroy_all

url = 'https://tmdb.lewagon.com/movie/top_rated'
movie_serialized = URI.open(url).read
movie_data = JSON.parse(movie_serialized)
movie_data['results'].each do |movie|
  title_path = movie['title']
  overview_path = movie['overview']
  poster_path = "https://image.tmdb.org/t/p/w500#{movie['poster_path']}"
  Movie.create(title: title_path, overview: overview_path, poster_url: poster_path)
end
