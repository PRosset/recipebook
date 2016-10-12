require 'httparty'

class YummlyController < ApplicationController
	def keyword
		@response = HTTParty.get("http://api.yummly.com/v1/api/recipes?_app_id=678354c2&_app_key=5068cc5b8f8cc221124e6726a3622062&q=#{params[:keyword]}")
		
		render json: @response.body
	end

	def id
		@response = HTTParty.get("http://api.yummly.com/v1/api/recipe/#{params[:id]}?_app_id=678354c2&_app_key=5068cc5b8f8cc221124e6726a3622062")
		
		render json: @response.body
	end

end
