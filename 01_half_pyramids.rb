#  Demander à l'utilisateur un nombre entre 1 et 25
def half_pyramid
puts "Entrer un nombre entre 1 et 25"
nombre = gets.chomp.to_i

# Vérifier si le nombre est valide
 if nombre < 1 || nombre > 25
  puts "Veuillez entrer un nombre entre 1 et 25"
else
 puts "Voici votre pyramide"
 1.upto(nombre) do |i|
    puts " " * (nombre - i) + "#" * i
 end
end
end



# Appel de la méthode

half_pyramid

