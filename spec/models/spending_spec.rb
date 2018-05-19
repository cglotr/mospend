require 'rails_helper'

RSpec.describe Spending, type: :model do
  it { should belong_to(:spending_month) }

  it { should validate_presence_of(:item) }
  it { should validate_presence_of(:cost) }
  it { should validate_presence_of(:currency) }
end
