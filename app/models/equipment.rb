class Equipment < ApplicationRecord
  #has_and_belongs_to_many :flats
  has_many :flat_equipments
  has_many :flats, through: :flat_equipments
end
