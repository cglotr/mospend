# frozen_string_literal: true

require "rails_helper"

RSpec.describe SpendingMonthsController, type: :controller do
  include Warden::Test::Helpers

  before(:context) do
    user = User.first
    login_as user
  end

  it { should route(:get, "/spending_months/1").to(action: :show, id: 1) }
end
