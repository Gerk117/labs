class CreateMainResults < ActiveRecord::Migration[5.1]
  def change
    create_table :main_results do |t|
      t.integer :readNumb
      t.string :numbers
      t.integer :counter

      t.timestamps
    end
  end
end
