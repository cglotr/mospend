require 'rails_helper'

RSpec.describe User, type: :model do
  it { should have_db_index :email }

  it { should have_many :spending_months }

  it { should validate_length_of(:password).is_at_least 6 }

  it { should validate_presence_of(:created_at) }
  it { should validate_presence_of(:email) }
  it { should validate_presence_of(:encrypted_password) }
  it { should validate_presence_of(:updated_at) }

  it { should validate_uniqueness_of(:email).case_insensitive }
end
