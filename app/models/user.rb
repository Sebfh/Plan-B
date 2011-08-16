class User < ActiveRecord::Base
    has_many :plans
    has_many :reactions
    def self.create_with_omniauth(auth)
      create! do |user| #een block aan create! hangen kan je bij de uer voordat ie in de db word opgeslagen.
        user.provider = auth["provider"]
        user.uid = auth["uid"]
        user.name = auth["user_info"]["name"]
      end
    end
end
