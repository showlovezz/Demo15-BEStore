class Category < ApplicationRecord
	# 驗證產品必填
	validates :name, presence: true

	# 一個分類底下有很多產品
	has_many :products, dependent: :destroy
end
