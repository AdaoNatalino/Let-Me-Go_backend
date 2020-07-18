class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :username
      t.string :password_digest
      t.string :city
      t.string :email
      t.string :avatar
      t.string :bio
      t.integer :stars, default: 0

      t.timestamps
    end
  end
end
