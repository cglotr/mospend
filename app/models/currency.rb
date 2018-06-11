# frozen_string_literal: true

class Currency < ApplicationRecord
  has_many :spendings

  validates :code, length: { minimum: 1 }, presence: true, uniqueness: true
end
