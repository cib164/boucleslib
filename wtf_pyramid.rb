def losange
    print "Salut, bienvenue dans mon super losange ! Combien d'étages veux-tu ? (nombre impair entre 1 et 25) "
    nombre = gets.chomp.to_i
  
# Si l'utilisateur utilise un nbr pair au lieu d'un nbr impair
    if nombre < 1 || nombre > 25 || nombre.even?
      puts "Veuillez entrer un nombre impair entre 1 et 25."
    return losange
end

      puts "Voici le losange :"
  
      # Partie haute (pyramide normale)
      1.upto(nombre) do |i|
        next if i.even?  # On affiche seulement les lignes impaires
        espaces = " " * ((nombre - i) / 2)
        symbole = "#" * i
        puts espaces + symbole
      end
  
      # Partie basse (pyramide inversée)
      (nombre - 2).downto(1) do |i|
        next if i.even?  # On affiche seulement les lignes impaires
        espaces = " " * ((nombre - i) / 2)
        symbole = "#" * i
        puts espaces + symbole
      end
    end
  
  # Appel de la méthode
  losange
  