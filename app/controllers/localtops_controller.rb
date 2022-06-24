class LocaltopsController < ApplicationController
  def index
    authenticate_user!
  end
end
