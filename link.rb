class Link < Post

  def initialize
    super

    @url = ''
  end

  def read_from_console
    puts "Адрес ссылки:"
    @url = STDIN.gets.chomp

    puts "Описание ссылки:"
    @text = STDIN.gets.chomp
  end

  def to_strings
    time_string = "Создано: #{@created_at.strftime("%d.%m.%Y %H:%M:%S.txt")} \n\r \n\r" #Создаю текущее время

    return [ time_string, @url, @text]
  end
end