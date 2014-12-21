movies = {
    Fight Club: 4,
}

puts "What would you like to do?"
puts "-- Type 'add' to add a movie."
puts "-- Type 'update' to update a movie."
puts "-- Type 'display' to display all movies."
puts "-- Type 'delete' to delete a movie."
choice = gets.chomp

case choice
when "add"
    
    puts "Enter a movie title:"
    title = gets.chomp
    
    if movies[title.to_sym] == nil
        puts "Enter a rating:"
        rating = gets.chomp
        movies[title.to_sym] = rating.to_i
        puts "The movie and rating was added."
    else
        puts "The movie already exists."
    end
    
when "update"
    
    puts "Enter a movie title:"
    title = gets.chomp
    
    if movies[title.to_sym] == nil
        puts "The movie does not exist."
    else
        puts "Enter a new rating:"
        rating = gets.chomp
        movies[title.to_sym] = rating.to_i
    end
    
when "display"
    
    movies.each { |movie, rating| puts "#{movie}: #{rating}" }
    
when "delete"
    
    puts "Enter a movie:"
    title = gets.chomp
    if movies[title.to_sym] == nil
        "The movie does not exist."
    else
        movies.delete(title.to_sym)
end
    
else
    puts "This is not an action."
end