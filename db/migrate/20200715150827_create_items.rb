class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :name
      t.string :type
      t.string :description
      t.integer :points
      t.string :image
      t.string :condition
      t.integer :user_id

      t.timestamps
    end
  end
end
