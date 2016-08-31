movies = {
    Matrix: 5,
    Sherlock: 5,
    Harry: 5
}
crud = "Here is your options, type \n - Add to add a film \n - Update to update film \n - Display to display film \n - Delete to dele film"


puts crud
choice = gets.chomp.downcase

case choice
when "add"
    puts "Your title selection?"
    title = gets.chomp
        if movies[title.to_sym].nil?
            puts "What is your rating? (Enter 0 - 5)"
            rating = gets.chomp
            movies[title.to_sym] = rating.to_i
            puts "You add #{title}: #{rating}"
        else
            puts "That movie already exist"
        end
when "update"
    puts "Type movie title"
    title = gets.chomp
        if movies[title.to_sym].nil?
            puts "Error! #{title} doesnt exsist"
        else
            puts "What is your rating? (Enter 0 - 5)"
            rating = gets.chomp
            movies[title.to_sym] = rating.to_i
            puts "the #{title} is now #{rating}"
        end
when "display"
    movies.each {|v,k| puts "#{v}: #{k}"}
when "delete"
    puts "Which"
    title = gets.chomp
        if movies[title.to_sym].nil?
            puts "Error!"
        else
            movies.delete(title)
        end
else
    puts "Error!"
end