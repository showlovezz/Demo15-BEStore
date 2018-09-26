class ProductsController < ApplicationController

	def show
		# 秀出特定產品的 Id
	  @product = Product.find(params[:id])

	  # 秀出全部的分類
		@categories = Category.all
	end

end
