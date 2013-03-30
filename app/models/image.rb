class Image < ActiveRecord::Base
  attr_accessible :album_id, :name, :user_id, :photo
  belongs_to :album
  belongs_to :user
  has_attached_file :photo, :styles => { :small => "150x150>" },
                    :url  => "/assets/images/:id/:style/:basename.:extension",
                    :path => ":rails_root/public/assets/images/:id/:style/:basename.:extension"

  validates_attachment_presence :photo
  validates_attachment_size :photo, :less_than => 5.megabytes
  validates_attachment_content_type :photo, :content_type => ['image/jpeg', 'image/png']
end
