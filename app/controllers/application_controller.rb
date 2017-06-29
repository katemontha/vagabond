class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected
  def configure_permitted_parameters

      devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:username, :email, :password, :password_confirmation, :remember_me) }


  #    devise_parameter_sanitizer.permit(:sign_up, keys: [:username, :email, :picture, :name, :hometown, :password, :password_confirmation, :remember_me])
    # devise_parameter_sanitizer.permit(:sign_in, keys: [:login, :username, :email, :password, :remember_me])
    # devise_parameter_sanitizer.permit(:account_update, keys: [:username, :email, :picture, :name, :hometown, :password, :password_confirmation, :current_password])
    # devise_parameter_sanitizer.permit(:sign_up) do |user_params|
    #   puts user_params
    #   puts "HEY I'm DOING SOMETHING"
    #   user_params.permit({roles: []}, :email, :password, :password_confirmation, :username, :hometown, :picture, :name)
    # end
    
  end   

end
