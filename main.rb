class Task
  # コードを追加
  attr_reader :id, :title, :content
  @@count = 0

  def initialize(**params)
    @id = @@count += 1
    @title = params[:title]
    @content = params[:content]
  end
end


task1 = Task.new(title: "洗濯", content: "7時半までに干し終える")
task2 = Task.new(title: "仕事", content: "9時〜18時")
task3 = Task.new(title: "買い物", content: "卵,ヨーグルト")

puts task1.id
puts task2.id
puts task3.id
