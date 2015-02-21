class PaychecksController < ApplicationController
  before_action :set_paycheck, only: [:show, :edit, :update, :destroy]

  # GET /paychecks
  def index
    @paychecks = Paycheck.all
  end

  # GET /paychecks/1
  def show
  end

  # GET /paychecks/new
  def new
    @paycheck = Paycheck.new
  end

  # GET /paychecks/1/edit
  def edit
  end

  # POST /paychecks
  def create
    @paycheck = Paycheck.new(paycheck_params)

    if @paycheck.save
      redirect_to @paycheck, notice: 'Paycheck was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /paychecks/1
  def update
    if @paycheck.update(paycheck_params)
      redirect_to @paycheck, notice: 'Paycheck was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /paychecks/1
  def destroy
    @paycheck.destroy
    redirect_to paychecks_url, notice: 'Paycheck was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_paycheck
      @paycheck = Paycheck.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def paycheck_params
      params.require(:paycheck).permit(:name, :planned_amount)
    end
end
