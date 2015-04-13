class ConcertsController < ApplicationController
	def new
		@concert = Kiss.new
		@now = Kiss.todays_concerts
		render 'home'
	end

	def create
		@concert = Kiss.create concert_params
		flash[:notice] = "You have created a concert!"
		redirect_to kisses_index_path
	end

	def index
		@concert = Kiss.all
		@now = Kiss.todays_concerts
		render 'concert'
	end

	def week
		@concert = Kiss.weeks_concerts
		@now = Kiss.todays_concerts
		render 'week'
	end

	private

	def concert_params
		params.require(:kiss).permit(:artist, :date, :venue, :city, :ticket_price, :description)
	end
end
