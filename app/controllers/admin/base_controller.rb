class Admin::BaseController < ApplicationController
	# 進入後台首頁需註冊及身份為管理員
	before_action :authenticate_user!
	before_action :authenticate_admin

	private

  def authenticate_admin
    unless current_user.admin?
      flash[:alert] = "Not allow!"
      redirect_to root_path
    end
  end
end