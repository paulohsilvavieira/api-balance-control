class CreateTransactions < ActiveRecord::Migration[7.0]
  def change
    create_table :transactions do |t|
      t.string :id
      t.text :title
      t.integer :value

      t.timestamps
    end
  end
end
