require_relative '../setup'

puts "Exercise 1"
puts "----------"

class Store < ActiveRecord::Base
    has_many :employees

    validates :annual_revenue, numericality: { only_integer: true, greater_than: 0 }
    validates :name, length: { minimum: 3 }
end

Burnaby = Store.create(:name => "Burnaby",:annual_revenue => 300000, :mens_apparel => true, :womens_apparel => true)
Richmond = Store.create(:name => "Richmond",:annual_revenue => 1260000,:mens_apparel => false, :womens_apparel =>  true)
Gastown = Store.create(:name => "Gastown",:annual_revenue =>  190000,:mens_apparel => true, :womens_apparel =>  false)


