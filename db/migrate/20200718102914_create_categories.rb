class CreateCategories < ActiveRecord::Migration[6.0]
  def change
    create_table :categories do |t|
      t.string :title
      t.string :image
      t.string :width, default: 0.3333

      t.timestamps
    end
  end
end
