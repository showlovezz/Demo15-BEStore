class Product < ApplicationRecord
	# 驗證產品必填
	validates :name, :tag, :description, :basic_price, :special_price , presence: true

	# 圖片上傳器
	mount_uploader :image, PhotoUploader
end
