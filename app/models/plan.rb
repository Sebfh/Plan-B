class Plan < ActiveRecord::Base
  belongs_to :user
  has_many :reactions
  has_one :location
  
  validates_presence_of :title, :description, :starts_at, :user_id
  before_save :cleanup
  
  named_scope :descending, :order => "starts_at DESC"
  named_scope :ascending, :order => "starts_at ASC"
  
  private
  
  def cleanup
      self[:title] = self[:title].capitalize
      self[:description] = self[:description].capitalize      
  end
end
