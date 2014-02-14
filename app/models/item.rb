class Item < ActiveRecord::Base
  attr_accessible :name, :lists_attributes
  has_many :lists , :dependent => :destroy
  
  accepts_nested_attributes_for :lists, :reject_if =>  lambda{|a| a[:title].blank? }, :allow_destroy => true
  
end
