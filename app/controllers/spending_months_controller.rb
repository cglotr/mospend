# frozen_string_literal: true

class SpendingMonthsController < ApplicationController
  before_action :set_spending_month, only: [:show, :edit, :update, :destroy]

  # GET /spending_months
  # GET /spending_months.json
  def index
    @spending_months = SpendingMonth.all
  end

  # GET /spending_months/1
  def show
    @spendings = @spending_month.spendings
  end

  # GET /spending_months/new
  def new
    @spending_month = SpendingMonth.new
  end

  # GET /spending_months/1/edit
  def edit
  end

  # POST /spending_months
  # POST /spending_months.json
  def create
    @spending_month = SpendingMonth.new(spending_month_params)

    respond_to do |format|
      if @spending_month.save
        format.html { redirect_to @spending_month, notice: "Spending month was successfully created." }
        format.json { render :show, status: :created, location: @spending_month }
      else
        format.html { render :new }
        format.json { render json: @spending_month.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /spending_months/1
  # PATCH/PUT /spending_months/1.json
  def update
    respond_to do |format|
      if @spending_month.update(spending_month_params)
        format.html { redirect_to @spending_month, notice: "Spending month was successfully updated." }
        format.json { render :show, status: :ok, location: @spending_month }
      else
        format.html { render :edit }
        format.json { render json: @spending_month.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /spending_months/1
  # DELETE /spending_months/1.json
  def destroy
    @spending_month.destroy
    respond_to do |format|
      format.html { redirect_to spending_months_url, notice: "Spending month was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_spending_month
      @spending_month = SpendingMonth.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def spending_month_params
      params.fetch(:spending_month, {})
    end
end
