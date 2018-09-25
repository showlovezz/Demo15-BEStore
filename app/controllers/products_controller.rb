class ProductsController < ApplicationController

	def show
		# 秀出特定產品的 Id
	  @product = Product.find(params[:id])
	end

end
