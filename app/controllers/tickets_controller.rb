# frozen_string_literal: true

class TicketsController < ProtectedController
  # class TicketsController < OpenReadController
  before_action :set_ticket, only: %i[show update destroy]

  # GET /tickets
  def index
    @tickets = current_user.tickets
    # @tickets = Ticket.all

    render json: @tickets
  end

  # GET /tickets/1
  def show
    render json: current_user.tickets.find(params[:id])
    # render json: Ticket.find(params[:id])
    # render json: @ticket
  end

  # POST /tickets
  def create
    @ticket = current_user.tickets.build(ticket_params)
    # @ticket = Ticket.new(ticket_params)

    if @ticket.save
      render json: @ticket, status: :created, location: @ticket
    else
      render json: @ticket.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /tickets/1
  def update
    if @ticket.update(ticket_params)
      render json: @ticket
    else
      render json: @ticket.errors, status: :unprocessable_entity
    end
  end

  # DELETE /tickets/1
  def destroy
    @ticket.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_ticket
    @ticket = current_user.tickets.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def ticket_params
    params.require(:ticket).permit(:date, :type_of_pc, :model_number,
                                   :description, :user_id)
  end

  private :set_ticket, :ticket_params
end
