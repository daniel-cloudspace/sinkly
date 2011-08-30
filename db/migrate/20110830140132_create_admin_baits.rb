class CreateAdminBaits < ActiveRecord::Migration
  def change
    create_table :admin_baits do |t|
      t.string :name

      t.timestamps
    end
  end
end
