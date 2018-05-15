class CreateSpendingMonths < ActiveRecord::Migration[5.2]
  def change
    create_table :spending_months do |t|
      t.integer :year
      t.integer :month

      t.timestamps
    end
  end
end
