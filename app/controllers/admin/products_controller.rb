class Admin::ProductsController < ApplicationController
	# 進入後台首頁需註冊及身份為管理員
	before_action :authenticate_user!
	before_action :authenticate_admin
	
end
