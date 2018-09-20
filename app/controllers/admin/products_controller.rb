class Admin::ProductsController < ApplicationController
	# 進入後台首頁需註冊及身份為管理員
	before_action :authenticate_user!
	before_action :authenticate_admin

	# 尋找產品 Id
	before_action :find_product, only: [:edit, :update, :destroy]

	# 以下是產品 CRUD
	def index
		@products = Product.all
	end

	def new
		@product = Product.new
	end

	def create
		@product = Product.new(product_params)
		if @product.save
			flash[:notice] = "產品建立成功"
			redirect_to admin_products_path
		else
			flash.now[:alert] = "產品建立失敗，是不是少輸入什麼 !?"
			render :new
		end
	end

	def edit
	end

	def update
		if @product.update(product_params)
			flash[:notice] = "產品修改成功"
			redirect_to admin_products_path
		else
			flash.now[:alert] = "產品修改失敗，是不是少輸入什麼 !?"
			render :edit
		end
	end

	def destroy
    @product.destroy
    flash[:alert] = "產品已經被刪除 !"
		redirect_to admin_products_path
  end

	private

	def product_params
		params.require(:product).permit(:name, :description, :tag, :basic_price, :special_price, :image)
	end

	def find_product
		@product = Product.find(params[:id])
	end
	
end
