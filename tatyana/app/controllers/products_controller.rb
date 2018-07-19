class ProductsController < ApplicationController
	#GET /products
	def index
		@products = Product.all
	end
	#GET /products/show[:id]
	def show
		@product = Product.find(params[:id])
	end
	#GET /products/new
	def new
		@product = Product.new
	end
	#POST /produts
	def create
		@product = Product.new(name: params[:product][:name], 
													description: params[:product][:description], 
													price: params[:product][:price], stock: params[:product][:stock])
		if @product.save
			redirect_to @product
		else
			render :new
		end
	end
end