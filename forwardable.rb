require "forwardable"

class Person
  extend Forwardable

  def_delegator  :@address, :to_s, :full_address # Person.full_addres -> @address.to_s
  def_delegators :@address, :city, :country

  attr_reader :name, :address
  def initialize name:, address: Address.new
    @name = name
    @address = address
  end
end

class Address
  attr_reader :street, :zipcode, :city, :country
  def initialize street:, zipcode:, city:, country:
    @street = street
    @zipcode = zipcode
    @city = city
    @country = country
  end

  def to_s
    <<EOF
#{street}
#{zipcode} #{city}
#{country}
EOF
  end
end

person = Person.new(
  name: "Jose Mota",
  address: Address.new(
    street: "A",
    zipcode: 12345,
    city: "Anywhere",
    country: "Portugal"))

puts person.city
puts person.country
puts person.full_address
