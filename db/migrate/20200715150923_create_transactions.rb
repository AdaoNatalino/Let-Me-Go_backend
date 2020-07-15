class CreateTransactions < ActiveRecord::Migration[6.0]
  def change
    create_table :transactions do |t|
      t.date :date
      t.string :status
      t.integer :item1_id
      t.integer :item2_id

      t.timestamps
    end
  end
end
