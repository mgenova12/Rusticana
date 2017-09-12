class Apply < ApplicationRecord
  validates :first_name, :last_name, :address, :city, :state, :zip, :phone_number, :date_of_birth, :eighteen_or_older, :prevented, presence: true

end
