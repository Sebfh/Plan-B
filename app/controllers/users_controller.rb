class UsersController < ApplicationController
  has_many :plans, :through => :reactions
end
