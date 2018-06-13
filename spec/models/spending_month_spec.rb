# frozen_string_literal: true

require "rails_helper"

RSpec.describe SpendingMonth, type: :model do
  it { should belong_to :user }

  it { should have_db_index :user_id }

  it { should have_many(:spendings).dependent :destroy }

  it { should validate_numericality_of :month }
  it { should validate_numericality_of :year }

  it { should validate_presence_of :month }
  it { should validate_presence_of :user_id }
  it { should validate_presence_of :year }
end
