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
    @spending = Spending.new
    @currencies = Currency.all.map do |currency|
      [currency.code, currency.id]
    end
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
  # DELETE /spendings/1.json
  def destroy
    @spending.destroy
    respond_to do |format|
      format.html { redirect_to spendings_url, notice: "Spending was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_spending
      @spending = Spending.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def spending_params
      params.require(:spending).permit(:item, :cost, :currency_id)
    end
end
