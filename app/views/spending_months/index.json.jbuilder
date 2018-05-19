# frozen_string_literal: true

json.array! @spending_months, partial: "spending_months/spending_month", as: :spending_month
