# frozen_string_literal: true

class HardwaresController < ProtectedController
  before_action :set_hardware, only: %i[show update destroy]

  # GET /hardwares
  def index
    @hardwares = current_user.hardwares
    # @hardwares = Hardware.all

    render json: @hardwares
  end

  # GET /hardwares/1
  def show
    render json: current_user.hardwares.find(params[:id])
    # render json: @hardware
  end

  # POST /hardwares
  def create
    @hardware = current_user.hardwares.build(hardware_params)
    # @hardware = Hardware.new(hardware_params)

    if @hardware.save
      render json: @hardware, status: :created, location: @hardware
    else
      render json: @hardware.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /hardwares/1
  def update
    if @hardware.update(hardware_params)
      render json: @hardware
    else
      render json: @hardware.errors, status: :unprocessable_entity
    end
  end

  # DELETE /hardwares/1
  def destroy
    @hardware.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_hardware
    @hardware = current_user.hardwares.find(params[:id])
    # @hardware = Hardware.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def hardware_params
    params.require(:hardware).permit(:date, :name_of_hardware, :processor_speed,
                                     :memory, :serial_number, :user_id)
  end
end
