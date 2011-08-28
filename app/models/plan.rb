class Plan < ActiveRecord::Base
  belongs_to :user
  has_many :reactions, :dependent => :destroy
  #has_many :attendees, :through => :reactions, :class_name => "User"
  has_many :attendees, :through => :reactions, :source => :user
  
  validates_presence_of :title, :description, :starts_at, :address, :user_id
  before_save :cleanup
  
  scope :upcoming, lambda { 
      where("plans.starts_at IS NOT NULL AND plans.starts_at >= ?", Time.zone.now)
    }
  named_scope :descending, :order => "starts_at DESC"
  named_scope :ascending, :order => "starts_at ASC"
  
  acts_as_gmappable

  def gmaps4rails_address
    address
  end
  
  def gmaps4rails_infowindow
    "<h1>#{self.title}</h1><p><a href=""/plans/#{self.id}"">view details</a></p>"
  end
  
  private
  
  def cleanup
      self[:title] = self[:title].capitalize
      self[:description] = self[:description].capitalize  
      self[:address] = self[:address].capitalize      
  end
end
