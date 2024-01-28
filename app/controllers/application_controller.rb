class ApplicationController < ActionController::Base
 #before_action :authenticate_user!ここだとログアウト状態でユーザー詳細ページに移動できなくなる
  before_action :configure_permitted_parameters, if: :devise_controller?

  private
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :profile, :position, :occupation])
  end
end
