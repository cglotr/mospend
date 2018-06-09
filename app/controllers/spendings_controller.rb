# frozen_string_literal: true

class SpendingsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create]
  before_action :set_spending, only: [:show, :edit, :update, :destroy]

  # GET /spendings
  # GET /spendings.json
  def index
    @spendings = Spending.all
  end

  # GET /spendings/1
  # GET /spendings/1.json
  def show
  end

  # GET /spendings/new
  def new
    init_new
    @spending = Spending.new
  end

  # GET /spendings/1/edit
  def edit
  end

  # POST /spendings
  def create
    current_year = Time.current.year
    current_month = Time.current.month
    spending_month_params = { year: current_year, month: current_month }

    spending_month = current_user.spending_months.find_by(spending_month_params)
    spending_month ||= current_user.spending_months.create(spending_month_params)
    @spending = spending_month.spendings.build(spending_params)

    if @spending.save
      redirect_to root_path, notice: "Spending was successfully created."
    else
      init_new
      render :new
    end
  end

  # PATCH/PUT /spendings/1
  # PATCH/PUT /spendings/1.json
  def update
    respond_to do |format|
      if @spending.update(spending_params)
        format.html { redirect_to @spending, notice: "Spending was successfully updated." }
        format.json { render :show, status: :ok, location: @spending }
      else
        format.html { render :edit }
        format.json { render json: @spending.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /spendings/1
  def destroy
    @spending.destroy
    redirect_back(fallback_location: root_path)
  end

  private
    def init_new
      last_spending_month = current_user.spending_months.last

      if last_spending_month && last_spending_month.spendings.last
        @last_currency_id = last_spending_month.spendings.last.currency.id
      else
        @last_currency_id = Currency.first.id
      end

      @currencies = Currency.all.map do |currency|
        [currency.code, currency.id]
      end
    end

    def set_spending
      @spending = Spending.find(params[:id])
    end

    def spending_params
      params.require(:spending).permit(:item, :cost, :currency_id)
    end
end
