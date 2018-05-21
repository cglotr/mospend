class RemoveCurrencyFromSpendings < ActiveRecord::Migration[5.2]
  def change
    remove_column :spendings, :currency, :string
  end
end
