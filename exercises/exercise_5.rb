require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

@annual_rev =  Store.sum("annual_revenue")
pp "Annual Revenue: #{@annual_rev}"
@average_rev = @annual_rev/(Store.count)
pp "Average Revenue #{@average_rev}"