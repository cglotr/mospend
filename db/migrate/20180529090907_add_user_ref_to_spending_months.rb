class AddUserRefToSpendingMonths < ActiveRecord::Migration[5.2]
  def change
    add_reference :spending_months, :user, foreign_key: true
  end
end
