class BoardController < ApplicationController
  # before_filter :authenticate_user!, except: [:index]

  def index
    
  end

  def help

  end

  def client_login
  end

  def employee_login
    redirect_to '/employees/sign_in'
  end
end
