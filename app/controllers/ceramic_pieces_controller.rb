class CeramicPiecesController < ApplicationController
  before_action :set_ceramic_piece, only: [:show]

  def new
    @ceramic_piece = CeramicPiece.new
  end

  def create
    @ceramic_piece = CeramicPiece.new(ceramic_piece_params)

    if @ceramic_piece.save
      # Once saved, we can get all the calculations because it's saved in the model.
      redirect_to @ceramic_piece, notice: 'Cost was successfully calculated.'
    else
      render :new
    end
  end

  def show
    # The `set_ceramic_piece` method already finds the ceramic_piece for us.
  end

  private

  def set_ceramic_piece
    @ceramic_piece = CeramicPiece.find(params[:id])
  end

  def ceramic_piece_params
    params.require(:ceramic_piece).permit(:height, :width, :thickness, :clay_cost, :nail_polish_cost, :electricity_cost, :burn_duration, :oven_power, :maintenance_cost, :labor_cost)
  end
end
