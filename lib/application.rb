class Application

 #lance le message de début de jeu
 def start_game
    system('clear')
    puts "\n\n\n\t\t\t---------------------------------------"
    puts "\t\t\t|            LE MORPION DE TONTON              |"
    puts "\t\t\t|         (Pire Projet Possible)           |"
    puts "\t\t\t---------------------------------------"
    puts " "
    puts " "
    puts "      Bienvenue sur le jeu du morpion ! J'espere que j'ai pas passé la journée à essayer de coder cette merde pour que tu échoues dès le début !"
    puts "      Affronte un joueur dès maintenant"
    puts " "
  end

  #demande au joueur 1 son nom
  def ask_player1
    puts "      Tout d'abord, quel est le nom du premier joueur ? "
    print "      Premier joueur : "
    player1 = gets.chomp
    puts "      Ton symbole sera donc le X"
    puts " "
    return player1
  end

  #demande au joueur 2 son nom
  def ask_player2
    puts "      Ensuite, quel est le nom du deuxième joueur ? "
    print "      Deuxième joueur : "
    player2 = gets.chomp
    puts "      Ton symbole sera donc le O"
    puts " "
    puts " "
    puts "      La partie peut commencer..."
    puts "      Appuie sur entrée pour lancer le jeu"
    gets.chomp
    return player2
  end

  #demande aux joueurs s'ils veulent refaire une partie
  def ask_again(game)
    puts "      Veux-tu rejouer ? OUI / NON"
    print "      > "
    input = gets.chomp
    puts " "
    while input != "OUI" || input != "NON"
      case input
      when "OUI"
        #si oui, va lancer le nettoyage de la grille et relance une partie
        input = " "
        game.new_round
        game.turn
      when "NON"
        #si non, va afficher le tableau de fin
        game.game_end
        break
      else
        #si l'entrée n'est pas bonne, retourne à l'input
        puts "      Veux-tu rejouer ? OUI / NON"
        puts "      Ecrit OUI ou NON en majuscules : "
        print "      > "
        input = gets.chomp
        puts " "
      end
    end

  end



    def perform
      # TO DO : méthode qui initialise le jeu puis contient des boucles while pour faire tourner le jeu tant que la partie n'est pas terminée.
      # 
      start_game
      player1 = ask_player1
      player2 = ask_player2
  
      game = Game.new(player1, player2) #créer le premier jeu
      game.turn
  
      ask_again(game) #une boucle qui effectues plusieurs parties tant que les joueurs ne disent pas stop
    end
  
  end