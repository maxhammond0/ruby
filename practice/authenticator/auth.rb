users = [
  { username: 'max', password: 'password1' },
  { username: 'jack', password: 'password2' },
  { username: 'arya', password: 'password3' },
  { username: 'jonshow', password: 'password4' },
  { username: 'heisenberg', password: 'password5' }
]

def auth_user(username, password, users)
  users.each do |j|
    if j[:username].chomp == username && j[:password] == password
      puts 'Correct username and password'
      return username
    end
  end
  'Invalid credentials'
end

puts 'Welcome to the authenticator'
25.times { print '-' }
puts
puts 'This program will take input from the user and compare password'
puts 'If password is correct, you will get back the user object'

i = 0
while i < 3
  print 'Enter username: '
  user = gets.chomp

  print 'Enter password: '
  pass = gets.chomp

  check = auth_user(user, pass, users)

  break if check == user

  puts check
  puts "#{3 - (i + 1)} tried remaining"
  puts
  i += 1
end
