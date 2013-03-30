class User < ActiveRecord::Base
  attr_accessible :email, :name, :albums_attributes
  validates :name, :presence => true, :length => { maximum: 50 } ,uniqueness: true
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, :presence => true, format: { with: VALID_EMAIL_REGEX } ,uniqueness: true
  has_many :albums, :dependent => :destroy
  #has_many :images, :through => :album
  accepts_nested_attributes_for :albums, :reject_if => lambda { |a| a[:name].blank? }, :allow_destroy => true


end
