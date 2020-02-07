require 'bcrypt'

class Student
  attr_accessor :first_name, :last_name, :email, :username, :password

  # # getter
  # def first_name
  #   @first_name
  # end

  # # setter
  # def first_name=(first_name)
  #   @first_name = first_name
  # end

  def initialize(first_name, last_name, email, username, password)
    @first_name = first_name
    @last_name = last_name
    @email = email
    @username = username
    @password = BCrypt::Password.create(password)
  end

  def password_correct?(password)
    # .new takes a hash
    BCrypt::Password.new(@password) == password
  end

  def self.hash_password(password)
    # .create takes a plaintext
    BCrypt::Password.create(password)
  end
end

student = Student.new("first", "last", "email@gmail.com", "username", "password")
puts student
puts student.password
# student.first_name = "test"
# student.email = "email@gmail.com"
# # undefined because it's reader
# student.username = "blah"
# puts student
puts student.password_correct?("123") # => false
puts student.password_correct?("password") # => false
puts Student.hash_password("test")

require_relative "crud"
# Must in the same directory
# Or add current directory into current path
# $LOAD_PATH << "."
# require 'crud'
users = [
  { username: "a", password: "password"}
]
hashed_users = create_secure_users(users)