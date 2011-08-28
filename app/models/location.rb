class Location < ActiveRecord::Base
  belongs_to :plan
  
  acts_as_gmappable

  def gmaps4rails_address
    address
  end
   
  def gmaps4rails_infowindow
        if !self.plan.nil?
          "<h1>#{self.plan.title}</h1><p><a href=""/plans/#{self.plan.id}"">view details</a></p>"
        end
  end
end

