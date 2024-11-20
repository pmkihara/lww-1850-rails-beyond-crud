class ReviewsController < ApplicationController
  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new
  end

  def create
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new(review_params)
    @review.restaurant = @restaurant
    if @review.save
      # se deu bom, redirecionar para a show de restaurant
      redirect_to restaurant_path(@restaurant)
    else
      # se deu ruim, renderizar novamente o formulário mostrando os erros de validação
      render :new, status: :unprocessable_entity # erro 422
    end
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    redirect_to restaurant_path(@review.restaurant), status: :see_other
  end

  private

  def review_params
    params.require(:review).permit(:content)
  end
end
