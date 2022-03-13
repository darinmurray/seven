class IncomesController < ApplicationController
  before_action :set_income, only: %i[ show edit update destroy ]

  # GET /incomes or /incomes.json
  def index
    # @incomes = Income.all
    # get only the current users incomes
    @incomes = current_account.user.incomes
  end

  # GET /incomes/1 or /incomes/1.json
  def show
    @user = current_account.user
  end

  # GET /incomes/new
  def new
    @income = Income.new
    @user = current_account.user
  end

  # GET /incomes/1/edit
  def edit
  end

  # POST /incomes or /incomes.json
  def create
    @user = current_account.user 
    @income = Income.new(income_params)
    @income.user = @user # included current user
    @income.amount = income_params[:avg_monthly_income]
    respond_to do |format|
      if @income.save
        # format.html { redirect_to income_url(@income), notice: "Income was successfully created." }
        format.html { redirect_to user_url(@user), notice: "Income was successfully created." }
        format.json { render :show, status: :created, location: @income }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @income.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /incomes/1 or /incomes/1.json
  def update
    respond_to do |format|
      if @income.update(income_params)
        format.html { redirect_to income_url(@income), notice: "Income was successfully updated." }
        format.json { render :show, status: :ok, location: @income }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @income.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /incomes/1 or /incomes/1.json
  def destroy
    @income.destroy

    respond_to do |format|
      format.html { redirect_to incomes_url, notice: "Income was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_income
      @income = Income.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def income_params
      params.require(:income).permit(:user_id, :name, :avg_monthly_income, :interval, :amount)
    end
end
