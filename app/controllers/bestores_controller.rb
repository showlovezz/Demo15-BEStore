class BestoresController < ApplicationController

	def index
		# 首頁依創立時間秀出 8 個產品
		@products = Product.order("created_at DESC").limit(8)

		# 秀出全部的分類
		@categories = Category.all
	end
	
end
