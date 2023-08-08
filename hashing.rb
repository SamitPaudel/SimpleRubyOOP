require 'bundler/inline'

gemfile true do
  source 'http://rubygems.org'
  gem 'bcrypt'
end

require 'bcrypt'

my_password = BCrypt::Password.create("pantera1")
#=> "$2a$10$vI8aWBnW3fID.ZQ4/zo1G.q1lRps.9cGLcZEiGDMVr5yUP1KUOYTa"

puts "Password = #{my_password}"
my_password = BCrypt::Password.new("$2a$12$8GbcCviQyBeXvQ6f68sTpeJCk5ZuZDudPCLOu6yTnIxyNiLHXOBpu")
puts my_password == "pantera1"
puts my_password == "pantera2"

