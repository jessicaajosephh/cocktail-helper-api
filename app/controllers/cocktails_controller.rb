class CocktailsController < ApplicationController

    def index 
        cocktails = Cocktail.all 
        render json: CocktailSerializer.new(cocktails)
    end

    def create 
        cocktail = Cocktail.new(cocktail_params)
            if cocktail.save 
                render json: cocktail, status: :accepted
            else 
                render json: {errors: cocktail.errors.full_messages}, status: :unprocessable_entity
            end
    end

    def destroy 
        cocktail = Cocktail.find(params[:id])
        cocktail.destroy 
    end

    private

    def cocktail_params 
        params.require(:cocktail).permit(:name, :image, :instructions, :likes)
    end

end
