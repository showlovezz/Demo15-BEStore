class CategoriesController < ApplicationController
	def show
		# 配合導覽列需秀出全部的產品分類
		@categories = Category.all
		
		# 被點擊的分類——特定一筆分類資料
		@category = Category.find(params[:id])
		
		# 和該分類關聯的產品資料
		@products = @category.products.all
	end
end
