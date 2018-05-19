# frozen_string_literal: true

json.extract! spending_month, :id, :created_at, :updated_at
json.url spending_month_url(spending_month, format: :json)
