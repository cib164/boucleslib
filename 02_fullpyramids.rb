def full_pyramid
    print "Salut! Bienvenu dans ma super pyramide! Combien d'étage veux-tu ?"
    nombre = gets.chomp.to_i

    if nombre < 1 || nombre > 25
        puts "Entrez un nombre entre 1 et 25"
    else
        puts "Voici la pyramide :"
# Générer pyramide centrée
1.upto(nombre) do |i|
    # Calculer les espaces nécessaires pour centrer la ligne
    espaces = " " * (nombre - i)  # Ajoute des espaces pour centrer
    # Générer les symbole # 
    symboles = "#" * (2 * i - 1) # Génère une ligne de nbr impairs de "#"
    #Afficher la ligne centrée
  puts espaces + symboles
end
end
end

full_pyramid
