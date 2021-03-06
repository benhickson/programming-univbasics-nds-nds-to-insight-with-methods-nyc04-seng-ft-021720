$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
  sum = 0
  director_data[:movies].length.times do |b|
    sum = sum + director_data[:movies][b][:worldwide_gross]
  end
  sum
end

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }
def directors_totals(nds)
  result = {}
  nds.length.times do |a|
    sum = 0
    nds[a][:movies].length.times do |b|
      sum = sum + nds[a][:movies][b][:worldwide_gross]
    end
    result[nds[a][:name]] = sum
  end   
  result
end
