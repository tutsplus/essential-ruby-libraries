require 'ostruct'
require 'benchmark'

COUNT = 1_000_000
NAME = "Test Name"
EMAIL = "test@example.org"

class Person
  attr_accessor :name, :email
end

Benchmark.bm(13) do |x|
  x.report("hash:") do
    COUNT.times do
      p = {name: NAME, email: EMAIL}
    end
  end

  x.report("openstruct:") do
    COUNT.times do
     p = OpenStruct.new
     p.name = NAME
     p.email = EMAIL
   end
  end

  x.report("struct:") do
    PersonStruct = Struct.new(:name, :email)
    COUNT.times do
      p = PersonStruct.new
      p.name = NAME
      p.email = EMAIL
    end
  end

  x.report("class:") do
    COUNT.times do
      p = Person.new
      p.name = NAME
      p.email = EMAIL
    end
  end
end
