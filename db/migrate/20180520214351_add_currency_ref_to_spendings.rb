class AddCurrencyRefToSpendings < ActiveRecord::Migration[5.2]
  def change
    add_reference :spendings, :currency, foreign_key: true
  end
end
