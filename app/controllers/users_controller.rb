class UsersController < ApplicationController
  def new
    @User = User.new
  end
end
