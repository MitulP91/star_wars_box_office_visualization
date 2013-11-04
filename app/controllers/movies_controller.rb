class MoviesController < ApplicationController
	def index
		total_gross = 0
		@movies = Movie.all

		@movies.each do |movie|
			total_gross += movie.gross
		end

		@display_num = total_gross
	end

	def graph
		@movies = Movie.all
		@display_num = 4314077024.00
	end

	def show
		@movies = Movie.all

		render :json => @movies
	end
end
