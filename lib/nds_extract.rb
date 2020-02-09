$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
  sum = 0
  director_data.length.times do |a|
    director_data[a][:movies].length.times do |b|
      sum = sum + director_data[a][:movies][b][:worldwide_gross]
    end
  end 
  sum
end

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }
def directors_totals(nds)
  result = {}
  director_data.length.times do |a|
    sum = 0
    director_data[a][:movies].length.times do |b|
      sum = sum + director_data[a][:movies][b][:worldwide_gross]
    end
    result[director_data[a][:name]] = sum
  end   
  result
end
