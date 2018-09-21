class Product < ApplicationRecord
	# 驗證產品必填
	validates :name, :tag, :description, :basic_price, :special_price, :image, :category_id, presence: true

	# 圖片上傳器
	mount_uploader :image, PhotoUploader

	# 很多產品會屬於一個分類
	belongs_to :category, optional: true
end
