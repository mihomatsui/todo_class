class Task
  attr_reader :id, :title, :content
  @@count = 0

  def initialize(title:, content:)
    @id = @@count += 1
    @title = title
    @content = content
  end

  def info
    puts "[No.#{@id}] #{@title}:#{@content}"
  end
end

class ToDo
  def initialize
    @tasks = []
  end

  def add(task)
    # コードを追記
  end

  def info
    # コードを追記
  end

task1 = Task.new(title: "洗濯", content: "7時半までに干し終える")
task2 = Task.new(title: "仕事", content: "9時〜18時")
task3 = Task.new(title: "買い物", content: "卵,ヨーグルト")

puts task1.info
puts task2.info
puts task3.info
