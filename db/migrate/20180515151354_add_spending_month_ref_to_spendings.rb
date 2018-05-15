class AddSpendingMonthRefToSpendings < ActiveRecord::Migration[5.2]
  def change
    add_reference :spendings, :spending_month, foreign_key: true
  end
end
