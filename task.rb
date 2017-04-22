require 'date'
class Task < Post

  def initialize
    super

    @due_date = Time.now
  end

  def read_from_console
    puts "Что нужно сделать?"
    @text = STDIN.gets.chomp

    puts "К какому числу? (Укажите дату в формате ДД.ММ.ГГГГ(например: 10.10.2010))"
    input = STDIN.gets.chomp

    @due_date = Date.parse(input) #User input convert into date
  end

  def to_strings
    time_string = "Создано: #{@created_at.strftime("%d.%m.%Y %H:%M:%S.txt")} \n\r \n\r" #Создаю текущее время

    deadline = "Крайний срок: #{@due_date}" # добавляю дедлайн

    return [time_string, deadline, @text] #возвращаю массив
  end
end