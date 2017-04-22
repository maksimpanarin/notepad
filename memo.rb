class Memo < Post

  def read_from_console

    puts "Вводи любой текст, а когда надоест напиши - \"end\""

    @text =[]
    line = String

    while line != "end" do
      line = STDIN.gets.chomp
      @text << line
    end

    @text.pop
  end

  def to_strings
    time_string = "Создано: #{@created_at.strftime("%d.%m.%Y %H:%M:%S.txt")} \n\r \n\r" #Создаю текущее время

    return @text.unshift(time_string) #добавляю его первым элементом массива @text
  end
end