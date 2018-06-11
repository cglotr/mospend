# frozen_string_literal: true

class Spending < ApplicationRecord
  belongs_to :currency
  belongs_to :spending_month

  validates :cost, numericality: true, presence: true
  validates :currency_id, presence: true
  validates :item, length: { minimum: 1 }, presence: true
  validates :spending_month_id, presence: true
end
