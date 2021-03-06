class DaysController < ApplicationController
  before_action :set_day, only: [:show, :update, :destroy]

  # GET /days
  # def index
  #   @days = Day.all
  #
  #   render json: @days
  # end

  # GET /days/1
  def show
    render json: @day
  end

  # POST /days
  def create
    @day = Day.new(day_params)

    if @day.save
      render json: @day, status: :created, location: @day
    else
      render json: @day.errors, status: :unprocessable_entity
    end
  end
  #
  # # PATCH/PUT /days/1
  # def update
  #   if @day.update(day_params)
  #     render json: @day
  #   else
  #     render json: @day.errors, status: :unprocessable_entity
  #   end
  # end
  #
  # # DELETE /days/1
  # def destroy
  #   @day.destroy
  # end

  private
    def set_day
      @day ||= Day.find(params[:id])
    end

    def day_params
      params.require(:day).permit(:date, :daily_rides, :total_rides)
    end
end
