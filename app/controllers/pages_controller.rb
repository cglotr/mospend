# frozen_string_literal: true

class PagesController < ApplicationController
  def hello
  end

  def home
    redirect_to action: "hello" unless user_signed_in?

    @spending_months = current_user.spending_months.includes(spendings: [:currency])

    @spending_months = @spending_months.map do |s_month|
      spending_currency_groups = Hash.new 0

      s_month.spendings.each do |spending|
        spending_currency_groups[spending.currency.code] += spending.cost
      end

      spending_currency_groups.sort_by { |currency, sum| currency }

      {
        month: s_month.month,
        year: s_month.year,
        spending_currency_groups: spending_currency_groups,
      }
    end
  end
end
