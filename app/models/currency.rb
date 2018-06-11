# frozen_string_literal: true

class Currency < ApplicationRecord
  has_many :spendings

  validates :code, length: { minimum: 1 }, presence: true, uniqueness: true
  validates :created_at, presence: true
  validates :updated_at, presence: true
end
