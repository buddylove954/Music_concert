class Kiss < ActiveRecord::Base
	validates :artist, presence: true
	validates :artist, length: {maximum: 50}

	validates :date, presence: true
	validates :venue, presence: true
	validates :city, presence: true

	validates :ticket_price, presence: true
	validates :ticket_price, length: {maximum: 10}

end
