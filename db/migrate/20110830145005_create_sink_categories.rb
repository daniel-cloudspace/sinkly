class CreateSinkCategories < ActiveRecord::Migration
  def change
    create_table :sink_categories do |t|
      t.string :name
      t.string :photo_file_name
      t.string :photo_content_type
      t.integer :photo_file_size
      t.datetime :photo_udpated_at
      t.integer :user_id

      t.timestamps
    end
  end
end
