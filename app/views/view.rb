class View
  def display_gift(gift)
    puts "#{gift.id} - #{gift.name}"
  end

  def ask_for_name
    puts "Name ?"
    gets.chomp
  end

  def ask_for_id
    puts "Id ?"
    gets.chomp.to_i
  end
end
