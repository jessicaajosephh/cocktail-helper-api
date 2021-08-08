class IngredientsController < ApplicationController

    def index 
        ingredients = Ingredient.all 
        render json: IngredientSerializer.new(ingredients)
    end

    def create 
        ingredient = Ingredient.new(ingredient_params)
            if ingredient.save 
                render :ingredient, status: :accepted 
            else 
                render json: {errors: ingredient.errors.full_messages}, status: :unprocessable_entity
            end
    end

    def destroy 
        ingredient = Ingredient.find(params[:id])
        ingedient.destroy 
    end

    private 

    def ingredient_params 
        params.require(:ingredient).permit(:name, :cocktail_id)
    end

end
