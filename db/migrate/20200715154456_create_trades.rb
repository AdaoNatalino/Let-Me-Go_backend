class CreateTrades < ActiveRecord::Migration[6.0]
  def change
    create_table :trades do |t|
      t.date :date
      t.string :status, default: "Pending"
      t.integer :item1_id
      t.integer :item2_id

      t.timestamps
    end
  end
end
