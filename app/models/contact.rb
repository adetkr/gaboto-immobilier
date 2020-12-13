class Contact < ApplicationRecord
  belongs_to :user
  belongs_to :flat
  validates :name, :number, :email, presence: true
  after_create :send_contact_email
  private

  def send_contact_email
    ContactMailer.with(contact: self).sent.deliver_now
  end
end
