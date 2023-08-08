require_relative 'crud'

class Student
  include Crud
  # attribute accessor
  attr_reader :username, :password
  attr_accessor :first_name, :last_name, :email


  # instance variables
  @first_name
  @last_name
  @email
  @username
  @password

  # Initialize method - Constructor
  def initialize(first_name, last_name, email, username, password)
    @first_name = first_name
    @last_name = last_name
    @email = email
    @username = username
    @password = password
  end

  def to_s
    "First Name: #{@first_name}, Last Name: #{@last_name}
    Email address: #{@email}, Username: #{@username}"
  end

end

# Create new class and set values to each via the initializer method
samit = Student.new("Samit", "Paudel", "samitpdl@gmail.com","samizen", "pantera1" )
sachin = Student.new("Sachin", "Paudel", "sachin.lumen@gmail.com", "lumen", "saclu123")

# Print everything
puts samit
puts sachin

hashed_password_samit = samit.create_hash_digest(samit.password)
puts samit.password
puts hashed_password_samit

