class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  
  # before_action :basic_authenticate
  before_action :current_user
  before_action :require_sign_in!
  helper_method :signed_in?

  private

  def current_user
    remember_token = User.encrypt(cookies[:user_remember_token])
    @current_user ||= User.find_by(remember_token: remember_token)
  end

  def sign_in(user)
      remember_token = User.new_remember_token
      cookies.permanent[:user_remember_token] = remember_token
      user.update!(remember_token: User.encrypt(remember_token))
      @current_user = user

      session[:username] = @current_user.name
      session[:userbanngou] = @current_user.banngou
      session[:userkengen] = @current_user.kengen
      if  @current_user.kengen == 3
      seito = Seito.find_by(banngou: @current_user.banngou)
      session[:seitoid] = seito.id   
      else
        session[:seitoid] = nil   
      end           
  end

  def sign_out
    cookies.delete(:user_remember_token)

    session[:username] = nil
    session[:userbanngou] = nil
    session[:userkengen] = nil  
  end

  def signed_in?
    @current_user.present?
  end

  def require_sign_in!
    redirect_to login_path unless signed_in?
  end

  def basic_authenticate
    authenticate_or_request_with_http_basic do |user, pass|
      if user == 'kyouyu' && pass == 'kyouyu'
        session[:username] = "養護教諭" 
        session[:userkengen] = 1
        true
      else
        if user == 'seito' && pass == 'seito'
          session[:username] = "生徒"
          session[:userkengen] = 2
          true
        else
          if user == 'sensei' && pass == 'sensei'
            session[:username] = "先生"
            session[:userkengen] = 3
            true
          else
        false
          end
        end  
      end  
  end
end
end
