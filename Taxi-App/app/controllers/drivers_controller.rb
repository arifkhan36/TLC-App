class DriversController < ApplicationController
  before_action :set_driver, only: [:show, :edit, :update, :destroy]
  def index
    @drivers = Driver.all
  end
  def show
    @driver = Driver.find(params[:id])
    @taxis = @driver.taxis
  end

   def create
  @driver = Driver.new(driver_params)

  respond_to do |format|
    if @driver.save
      format.html { redirect_to @driver, notice: 'Post was successfully created.' }
      format.json { render :show, status: :created, location: @driver }
    else
      format.html { render :new }
      format.json{ render json: @driver.errors, status: :unprocessable_entity }
    end
  end
end
def new
  @driver = Driver.new
end
def edit
  @diver = Driver.new

  end
  def update
    respond_to do |format|
      if @driver.update(driver_params)
        format.html {redirect_to @driver, notice: 'Driver was successfully updated.'}
      else
        format.html {render :edit}
      end
    end
  end
 def destroy
    @driver.destroy
    respond_to do |format|
      format.html { redirect_to drivers_url, notice: 'Driver was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
private
    # Use callbacks to share common setup or constraints between actions.
    # get the :id params from the url to be passed to each action
    def set_driver
      @driver = Driver.find(params[:id])
    end
  def driver_params
    params.require(:driver).permit(:name, :age, :rating, :taxi_id)
  end
end
