# frozen_string_literal: true

class Spending < ApplicationRecord
  belongs_to :spending_month

  validates :item, presence: true
  validates :cost, presence: true
  validates :currency_id, presence: true

  def currency
    Currency.find(self.currency_id)
  end
end
