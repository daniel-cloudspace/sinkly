class CreateBlogs < ActiveRecord::Migration
  def change
    create_table :blogs do |t|
      t.string :url
      t.string :icon
      t.string :username
      t.string :password
      t.string :type

      t.timestamps
    end
  end
end
