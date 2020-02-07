require_relative "crud"
require 'bcrypt'

class Student
  include Crud
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
    @password = create_hash_digest(password)
  end
end

student = Student.new("first", "last", "email", "usename", "password")
puts student.password