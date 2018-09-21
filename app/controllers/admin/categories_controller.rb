class Admin::CategoriesController < Admin::BaseController

  before_action :find_category, only: [:update, :destroy]

  def index
	  @categories = Category.all
	  
	  if params[:id]
	    find_category
	  else
	    @category = Category.new
	  end
	end

	def create
	  @category = Category.new(category_params)
	  if @category.save
	    flash[:notice] = "產品分類已成功建立!"
	    redirect_to admin_categories_path
	  else
	    @categories = Category.all
	    render :index
	  end
	end

	def update
		if @category.update(category_params)
			flash[:notice] = "產品分分類已修改成功!"
			redirect_to admin_categories_path
		else
			@categories = Category.all
			render :index
		end
	end

	def destroy
	  @category.destroy
		flash[:notice] = "產品分分類已被刪除!"
		redirect_to admin_categories_path
	end

	private

	def category_params
	  params.require(:category).permit(:name)
	end

	def find_category
	  @category = Category.find(params[:id])
	end

end
