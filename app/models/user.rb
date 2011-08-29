class User < ActiveRecord::Base
    has_many :plans, :dependent => :destroy
    has_many :reactions, :dependent => :destroy
    def self.create_with_omniauth(auth)
      create! do |user| #een block aan create! hangen kan je bij de user voordat ie in de db word opgeslagen.
        user.provider = auth["provider"]
        user.uid = auth["uid"]
        user.name = auth["user_info"]["name"]
        user.email = auth["user_info"]["email"]
        user.image_uri = auth["user_info"]["image"]
      end
    end
end
