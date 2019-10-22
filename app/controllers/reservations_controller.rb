class ReservationsController < ApplicationController
  def index
    @reservation
    render json: { data: @reservation}
  end
end
