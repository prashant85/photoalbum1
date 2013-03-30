class Tags < ActiveRecord::Base
  attr_accessible :comment, :image_id , :user_id, :album_id
end
