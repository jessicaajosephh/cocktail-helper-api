class CocktailSerializer 
    include FastJsonapi::ObjectSerializer 
    attributes :name, :image, :instructions, :likes, :ingredients
end