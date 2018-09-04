#!/usr/bin/ruby

require 'json'

file = File.read('info.json')
json = JSON.parse(file)

info_hash = json["info"]

def options(curr_map)
  keys = []
  values = []

  curr_map.each { |key, value| keys << key.to_sym ; values << value }

  [keys, values]
end

def additional_options(array)
  general = []

  array.each { |elem| general << options(elem) }

  keys = general.first.first

  values = []
  general.each { |sub_arr| values << sub_arr.last }
  
  [keys, values]
end

# MovieClass
movie_data = options(info_hash["movie"])

Movie = Struct.new(*(movie_data.first))
p movie_obj = Movie.new(*(movie_data.last))

# RatingClass
rating_data = options(info_hash["rating"])

Rating = Struct.new(*(rating_data.first))
p rating_obj = Rating.new(*(rating_data.last))

# ActorClass
p actor_data = additional_options(info_hash["actor"])

Actor = Struct.new(*(actor_data.first))

actor_data.last.each { |sub_arr| p Actor.new(*(sub_arr)) }
