class Api::V1::ProductsController < ApplicationController
	def hello_world
		render json: {message: 'Hello API'}
	end

	def list
		render json: Product.all
	end

	def create
		product = Product.new
		product.name = params[:name]
		product.quantity = params[:quantity]

		if product.save
			render json: product
		else
			render json: {"errors": product.errors}
		end
	end
end
