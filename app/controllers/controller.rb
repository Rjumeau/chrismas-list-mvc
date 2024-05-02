require_relative "../models/gift"
require_relative "../views/view"

class Controller
  def initialize
    @view = View.new
  end

  def list
    display_gifts
  end

  def add
    # Demander un nom à l'utilisateur pour son cadeau et on stocke le résultat dans une variable -> View
    name = @view.ask_for_name
    # Créer un cadeau avec le nom récupéré -> model
    gift = Gift.new(name: name)
    # Sauvegarder l'instance dans la base de donnée -> model
    gift.save
  end

  def delete
    # Afficher la liste des cadeaux -> View // Refacto -> Méthode privée
    display_gifts
    # Demander quel cadeau il souhaite supprimer (id) et récupérer l'id -> View
    id = @view.ask_for_id
    # Récupérer le cadeau à l'id donné -> Model
    gift = Gift.find(id)
    # Supprimer le cadeau récupéré -> Model
    gift.destroy
  end

  private

  def display_gifts
    # Récupérer les cadeaux de la DB -> Model
    gifts = Gift.all
    # Afficher les cadeaux -> View
    gifts.each do |gift|
      @view.display_gift(gift)
    end
  end
end
