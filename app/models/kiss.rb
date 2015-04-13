class Kiss < ActiveRecord::Base
	validates :artist, presence: true
	validates :artist, length: {maximum: 50}

	validates :date, presence: true
	validates :venue, presence: true
	validates :city, presence: true

	validates :ticket_price, presence: true
	validates :ticket_price, length: {maximum: 10}

	def self.todays_concerts
		self.where("date == ?", Time.now.to_date)
	end

	def self.weeks_concerts
		self.where("date >= ?", (Time.now - 600000).to_date) && self.where("date < ?", (Time.now + 100000).to_date)
	end
end