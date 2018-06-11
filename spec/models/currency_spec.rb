# frozen_string_literal: true

require "rails_helper"

RSpec.describe Currency, type: :model do
  it { should validate_length_of(:code).is_at_least 1 }

  it { should validate_presence_of :code }

  it { should have_many :spendings }

  it { should validate_uniqueness_of :code }
end
