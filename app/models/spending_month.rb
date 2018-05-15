class SpendingMonth < ApplicationRecord
  has_many :spendings, dependent: :destroy
end
