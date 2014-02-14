class List < ActiveRecord::Base
  
  attr_accessible :description, :title
  
  belongs_to :item 

  validates_presence_of :title
end
