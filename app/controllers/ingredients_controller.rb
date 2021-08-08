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

end
