class BoardController < ApplicationController
  before_filter :authenticate_user!, except: [:index]

  def index
    
  end

  def help

  end
end
