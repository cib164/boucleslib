def signup
    print "Définis un mot de passe : "
    mdp = gets.chomp
    return mdp  # On retourne le mot de passe pour l'utiliser plus tard
end

def login(mdp)  # 💡 Corrigé : Pas d'espace entre `login` et `(mdp)`
    print "Veuillez entrer votre mot de passe pour accéder à la page : "
    input = gets.chomp

    while input != mdp  # 🔥 Comparaison avec le bon mdp
        puts "Mot de passe incorrect, réessaie !"
        print "Entrez de nouveau votre mot de passe : "
        input = gets.chomp  # 💡 Correction : Modifier `input`, pas `mdp`
    end

    puts "Connexion réussie ✅"
end

def welcome_screen
    puts "🚀 Bienvenue dans ta secret zone !"
    puts "🚀 Voici les informations top secrètes de la NSA"
    puts "🚀 Londres est en Angleterre"
    puts "🚀 La terre est ronde"
end

def perform
    mdp = signup   # L'utilisateur définit un mot de passe
    login(mdp)     # 💡 Correction : Pas d’espace entre `login` et `(mdp)`
    welcome_screen # Accès à l’espace secret
end

# Lancer le programme
perform


    

     