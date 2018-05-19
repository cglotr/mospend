# frozen_string_literal: true

class SpendingMonth < ApplicationRecord
  has_many :spendings, dependent: :destroy
end
