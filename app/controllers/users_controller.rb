class UsersController < ApplicationController
  before_action :authenticate_user!, only: [:show]

  expose_decorated(:user) { current_user }
  expose_decorated(:reviews, ancestor: :user)

  def show
  	
  end

end