# frozen_string_literal: true

class SpendingMonthsController < ApplicationController
  before_action :authenticate_user!, only: [:show]
  before_action :set_spending_month, only: [:show]

  # GET /spending_months/1
  def show
    @spendings = {}
    @spending_month.spendings.each do |spending|
      day = spending.created_at.day
      unless @spendings.key? day
        @spendings[day] = []
      end
      @spendings[day] << spending
    end
    @heading = "#{@spending_month.year} - #{@spending_month.month}"
  end

  private

    def set_spending_month
      @spending_month = SpendingMonth.find(params[:id])
    end
end
