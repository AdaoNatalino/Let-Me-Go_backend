class CreateCategories < ActiveRecord::Migration[6.0]
  def change
    create_table :categories do |t|
      t.string :title
      t.string :url
      t.string :width, default: "33%"

      t.timestamps
    end
  end
end
