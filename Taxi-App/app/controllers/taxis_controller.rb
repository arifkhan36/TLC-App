class TaxisController < ApplicationController
  before_action :set_taxi, only: [:show, :edit, :update, :destroy]
  def index
    @taxis = Taxi.all
  end
  def show
    @taxi = Taxi.find(params[:id])
    # @driver = @taxi.driver
  end

  def create
    @taxi = Taxi.new(taxi_params)

      respond_to do |format|
      if @taxi.save
        format.html { redirect_to @taxi, notice: ' was successfully created.' }
        format.json { render :show, status: :created, location: @taxi }
      else
          format.html { render :new }
           format.json{ render json: @taxi.errors, status: :unprocessable_entity }
      end
    end
  end
  def new
    @taxi = Taxi.new
  end
  def edit
  @taxi = Taxi.find(params[:id])

  end
  def update
    respond_to do |format|
      if @taxi.update(taxi_params)
        format.html {redirect_to @taxi, notice: 'Taxis was successfully updated.'}
      else
        format.html {render :edit}
      end
    end
  end
   def destroy
    @taxi.destroy
    respond_to do |format|
      format.html { redirect_to drivers_url, notice: 'Taxi was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  private
    # Use callbacks to share common setup or constraints between actions.
    # get the :id params from the url to be passed to each action
    def set_taxi
      @taxi = Taxi.find(params[:id])
    end
  def taxi_params
    params.require(:taxi).permit(:model, :year, :driver_id)
  end
end

