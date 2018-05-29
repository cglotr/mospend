# frozen_string_literal: true

class Spending < ApplicationRecord
  belongs_to :currency
  belongs_to :spending_month

  validates :item, presence: true
  validates :cost, presence: true
end
