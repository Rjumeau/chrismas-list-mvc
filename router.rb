require_relative "./controllers/controller.rb"

class Router
  def initialize
    @choice = "" # Variable d'instance
    @controller = Controller.new # Variable d'instance
  end

  def run
    # Afficher le menu à l'utilisateur
    until @choice == "quit"
      print_menu
      @choice = gets.chomp

      # Rediriger l'action selon le choix de l'utilisateur
      redirect_action
    end
  end

  private

  def print_menu
    puts "Welcome to your Christmas gift list"
    puts "Which action [list|add|delete|quit]?"
  end

  def redirect_action
    case @choice
    when "list" then @controller.list
    when "add" then @controller.add
    when "delete" then @controller.delete
    when "quit" then puts "Goodbye"
    end
  end
end
