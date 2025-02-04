def lancer_de
    rand(1..6) # Génère un nombre entre 1 et 6
end

def jeu_marches
    marche = 0 # Postion initiale
    tour = 0 # Compteur de tours

    puts "Bienvenue dans le jeu des marches ! Ton objectif : Atteindre la 10ème marche! "

    while marche < 10
        tour += 1
        puts "\nTour #{tour}: Appuyez sur Entrée pour lancer le dé "
        gets.chomp # Attente entrée utilisateur

        dé = lancer_de
        puts "Tu as lancé un #{dé} !"

        if dé == 5 || dé == 6
            marche += 1
            puts "Tu montes d'une marche !"
        elsif dé == 1
            marche -= 1 unless marche
            puts "Tu descends d'une marche..." if marche > 0
        else
            puts "Rien ne se passe, reste sur place."
        end

        puts "Tu es maintenant à la marche #{marche}."
    end

    puts "\nBravo ! Tu as atteint la 10ème marche en #{tour} tours!"
    return tour # On retourne le nombre de tours pour average_finish_time
end 

def average_finish_time (nbr_parties)
    total_tours = 0

    nrb_parties.times do
        total_hours += jeu_marches
    end

    moyenne = total_tours.to_f / nrb_parties
    puts "8nTemps moyen pour atteindre la 10ème marche sur #{nbr_parties} parties : #{moyenne.round(2)} tours."
end
    #Lancer le jeu 
 jeu_marches

 # Calculer la moyenne sur plusieurs parties (désactiver les affichages interactifs si besoin)
# average_finish_time(100)
