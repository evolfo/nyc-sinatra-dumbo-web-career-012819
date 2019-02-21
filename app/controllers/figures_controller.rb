class FiguresController < ApplicationController
  # add controller methods
  get '/figures' do
  	@get_figures = get_figures
  	@get_titles = get_titles
  	@get_landmarks = get_landmarks
  	erb :'/figures/index'
	end

	def get_figures
		Figure.all  
	end

	def get_titles
		Title.all
	end

	def get_landmarks
		Landmark.all
	end
end

