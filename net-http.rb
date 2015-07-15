# To run a web server in the current directory, use:
#
#     ruby -run -ehttpd . -p8080
#
require "net/http"
require "json"

class Todo
  attr_reader :title, :done

  def self.all
    response = Net::HTTP.get(URI("http://localhost:8080/todos.json"))
    todos_list = JSON.parse(response)["todos"]
    todos_list.map { |todo| Todo.new todo["title"], todo["done"] }
  end

  def initialize title, done
    @title = title
    @done = done
  end
end

puts Todo.all.inspect
