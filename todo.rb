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
    task = @tasks.find{|task| task.id == id }
    if task.nil?
      puts "【!】該当idのタスクはありません。"
    else
      print "【削除】"
      puts task.info
      @tasks.delete(task)
    end
  end
end
