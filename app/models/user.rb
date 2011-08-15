class User < ActiveRecord::Base
    has_many :plans
    has_many :reactions
end
