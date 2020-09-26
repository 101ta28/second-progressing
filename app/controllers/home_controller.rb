class HomeController < ApplicationController
  before_action :configure_permitted_parameters
  def index
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
    devise_parameter_sanitizer.permit(:sign_up, keys: [:Student_id]) # 新規登録時(sign_up時)にnameというキーのパラメーターを追加で許可する
  end
end
