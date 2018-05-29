# frozen_string_literal: true

class SpendingMonth < ApplicationRecord
  belongs_to :user
  has_many :spendings, dependent: :destroy
end
