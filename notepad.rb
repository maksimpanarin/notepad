require_relative 'post.rb'
require_relative 'link.rb'
require_relative 'memo.rb'
require_relative 'task.rb'

puts "Привет я супер дневник!"
puts "Давай запишем твои мысли!"

choices = Post.post_type

choice = -1 #заведомо не верное значение

until choice >=0 && choice < choices.size #в цикле просим ввести вид поста (выбрав его индекс)

  choices.each_with_index do |type, index| # перебираем массив с видами постов добавляя индексы
    puts "\t #{index}. #{type}"
  end

  choice = STDIN.gets.chomp.to_i
end

entry = Post.create(choice) #создаем заметку основываясь на выборе пользователя

entry.read_from_console #Вызываем метод уже для конкретного типа выбраного ранее

entry.save

puts "Ура, запись сохранена."
