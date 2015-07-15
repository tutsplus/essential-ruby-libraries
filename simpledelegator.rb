require "delegate"

class Person
  attr_reader :name
  def initialize name
    @name = name
  end
end

class PersonDecorator < SimpleDelegator
  def slug
    name.downcase.gsub /\W/, "-"
  end
end

person = Person.new("Jose Mota")
decorator = PersonDecorator.new(person)
puts decorator.slug
