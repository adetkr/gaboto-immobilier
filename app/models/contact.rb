class Contact < ApplicationRecord
  belongs_to :user
  belongs_to :flat
  validates :name, :number, :email, presence: true
end
