class Task
  attr_reader :id, :title, :content
  @@count = 0

  def initialize(title:, content:)
    @id = @@count += 1
    @title = title
    @content = content
  end

  def info
   "[No.#{@id}] #{@title}:#{@content}"
  end
end

class ToDo
  def initialize
    @tasks = []
  end

  def add(task)
    @tasks << task
    print "【追加】"
    puts task.info
  end

  def info
    if @tasks.empty?
      puts "【！】 タスクはありません。"
    else
      puts " *=*=*=*=*=*=*=*=* task *=*=*=*=*=*=*=*=* "
        @tasks.each do |task|
          puts task.info
        end
      puts " *=*=*=*=*=*=*=*=*=*=*=**=*=*=*=*=*=*=*=* "
    end
  end

  def delete(id:)
    task = @tasks.find{|id| id == 1 }
    puts "ありません" if task.nil?
  end
end

task1 = Task.new(title: "洗濯", content: "7時半までに干し終える")
task2 = Task.new(title: "仕事", content: "9時〜18時")
task3 = Task.new(title: "買物", content: "卵, ヨーグルト")

todo = ToDo.new
todo.add(task1)
todo.add(task2)
todo.info
todo.delete(id: 1)
