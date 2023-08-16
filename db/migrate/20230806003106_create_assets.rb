class CreateAssets < ActiveRecord::Migration[7.0]
  def change
    create_table :assets, id: :uuid do |t|
      t.string :name
      t.string :code
      t.string :category
      t.timestamps
    end
  end
end
