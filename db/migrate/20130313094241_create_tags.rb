class CreateTags < ActiveRecord::Migration
  def change
    create_table :tags do |t|
      t.string :comment
      t.integer :image_id

      t.timestamps
    end
  end
end
