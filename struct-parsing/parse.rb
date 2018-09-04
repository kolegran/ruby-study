#!/usr/bin/ruby

require 'json'

file = File.read('info.json')
json = JSON.parse(file)

info_hash = json["info"]

Movie  = Struct.new(:movie_hash)
p test = Movie.new(info_hash["movie"])

Rating  = Struct.new(:rating_hash)
p test = Rating.new(info_hash["rating"])

Actor  = Struct.new(:actor_arr)
p test = Actor.new(info_hash["actor"])
