class CreateSpendings < ActiveRecord::Migration[5.2]
  def change
    create_table :spendings do |t|
      t.string :item
      t.decimal :cost
      t.string :currency

      t.timestamps
    end
  end
end
