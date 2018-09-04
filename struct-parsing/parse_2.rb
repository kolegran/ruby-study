#!/usr/bin/ruby

require 'json'

file = File.read('info.json')
json = JSON.parse(file)

info_hash = json["info"]

def form_attr(curr_hash)
  curr_hash.keys.map { |k| k.to_sym }
end

def attr_values(curr_hash)
  curr_hash.values
end

def arr_of_attr_values(curr_arr)
  actors = []
  curr_arr.each { |curr_hash| actors << attr_values(curr_hash) }

  actors
end

# MovieClass
movie_attr = form_attr(info_hash["movie"])
movie_attr_val = attr_values(info_hash["movie"])

Movie = Struct.new(*movie_attr)
p movie_obj = Movie.new(*movie_attr_val)

# RatingClass
rating_attr = form_attr(info_hash["rating"])
rating_attr_val = attr_values(info_hash["rating"])

Rating = Struct.new(*rating_attr)
p rating_obj = Rating.new(*rating_attr_val)

# ActorClass
actor_attr = form_attr(info_hash["actor"].first)
actors_attr_val = arr_of_attr_values(info_hash["actor"])

Actor = Struct.new(*actor_attr)
actors_attr_val.each { |sub_arr| p Actor.new(*sub_arr) }
