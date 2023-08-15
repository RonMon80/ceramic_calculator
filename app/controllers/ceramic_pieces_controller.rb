class CeramicPiecesController < ApplicationController
  def new
    @ceramic_piece = CeramicPiece.new
  end

  def create
    @ceramic_piece = CeramicPiece.new(ceramic_piece_params)

    if @ceramic_piece.save
      redirect_to @ceramic_piece, notice: 'Cost was successfully calculated.'
    else
      render :new
    end
  end

  def show
    @ceramic_piece = CeramicPiece.find(params[:id])
  end

  private

  def ceramic_piece_params
    params.require(:ceramic_piece).permit(:height, :width, :thickness, :clay_cost, :nail_polish_cost, :electricity_cost, :burn_duration, :oven_power, :maintenance_cost, :labor_cost)
  end
end
