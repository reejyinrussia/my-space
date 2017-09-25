class Person < ApplicationRecord
  validates_presence_of :name
  validates_presence_of :house
  validates_presence_of :city
  validates_presence_of :quote
  validates_presence_of :avatar

end
