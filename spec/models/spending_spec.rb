# frozen_string_literal: true

require "rails_helper"

RSpec.describe Spending, type: :model do
  it { should belong_to(:currency) }
  it { should belong_to(:spending_month) }

  it { should have_db_index :currency_id }
  it { should have_db_index :spending_month_id }

  it { should validate_length_of(:item).is_at_least 1 }

  it { should validate_numericality_of :cost }

  it { should validate_presence_of(:cost) }
  it { should validate_presence_of(:created_at) }
  it { should validate_presence_of(:currency_id) }
  it { should validate_presence_of(:item) }
  it { should validate_presence_of(:spending_month_id) }
  it { should validate_presence_of(:updated_at) }
end
