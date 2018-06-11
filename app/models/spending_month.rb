# frozen_string_literal: true

class SpendingMonth < ApplicationRecord
  belongs_to :user
  has_many :spendings, dependent: :destroy

  validates_numericality_of :month
  validates_numericality_of :year

  validates_presence_of :created_at
  validates_presence_of :month
  validates_presence_of :updated_at
  validates_presence_of :user_id
  validates_presence_of :year
end
