class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :login
      t.string :password
      t.string :password_digest
      t.string :remember_token

      t.timestamps
    end
    add_index :users, :login, unique: true
  end
end
