require 'json'
require 'open-uri'
file =  JSON.load(URI.open('https://raw.githubusercontent.com/adatechschool/Projets/master/robot_de_conversation/recipes.json'))
# data_hash = JSON.parse(file)
#gets "Gateau au chocolat"


puts"Salut, comment vas-tu? C'est quoi ton petit nom?"
name=gets.chomp.capitalize
puts"Salut à toi #{name}. En quoi puis-je t'aider?"
question =gets.chomp.capitalize
puts"Avec du #{question}, je te propose des recettes à base de #{question}"
result=[]


file.each do |recipe|   
    if recipe["ingredients"].include? question 
        result.push(recipe) 
    end
end  

ingredients=[] #je crée un array des ingredients 

result[0]["ingredients"].each do |mesingredients|    #mesingredients est la variable locale
ingredients.push(mesingredients) #j'ajoute les éléments de l'array ingredients dans la variable locale mesingredients
end

result.each do|recipe|
    puts recipe["recipe_name"]
    puts ingredients
    puts recipe["steps"]
end  
  

# file[0].each_with_index do |ingredient, index|
#     puts "pour du #{index}"
#     puts "il vous en faut #{ingredient}"
#    end 
# print ingredients