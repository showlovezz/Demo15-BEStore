class Category < ApplicationRecord
	# 一個分類底下有很多產品
	has_many :products, dependent: :destroy
end
