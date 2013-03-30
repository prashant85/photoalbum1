class AddUserIdToTags < ActiveRecord::Migration
  def change
    add_column :tags, :user_id, :integer
    add_column :tags, :album_id, :integer
  end
end
