require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

class Employee < ActiveRecord::Base
    belongs_to :store

    validates :first_name, presence: true
    validates :last_name, presence: true
    validates :store_id, presence: true
    validates :hourly_rate, numericality: { greater_than: 40 }

end

@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Jamie", last_name: "England", hourly_rate: 100)
@store1.employees.create(first_name: "Dave", last_name: "Morgan", hourly_rate: 100)
@store2.employees.create(first_name: "Ben", last_name: "Lesage", hourly_rate: 50)
@store2.employees.create(first_name: "Guy", last_name: "Dudeman", hourly_rate: 80)
@store2.employees.create(first_name: "Nick", last_name: "Earbuds", hourly_rate: 70)

pp @store2.employees
