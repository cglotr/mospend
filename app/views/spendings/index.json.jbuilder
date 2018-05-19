# frozen_string_literal: true

json.array! @spendings, partial: "spendings/spending", as: :spending
