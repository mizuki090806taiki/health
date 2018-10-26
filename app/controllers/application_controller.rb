class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  
  before_action :basic_authenticate

  private

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
