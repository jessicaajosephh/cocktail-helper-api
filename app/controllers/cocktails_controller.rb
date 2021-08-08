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

end
