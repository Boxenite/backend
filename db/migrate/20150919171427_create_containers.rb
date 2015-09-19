class CreateContainers < ActiveRecord::Migration
  def change
    create_table :containers do |t|
      t.references :user, index: true
      t.references :project
      t.string :cid
      t.timestamps null: false
    end
  end
end
