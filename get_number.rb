# Get My Number Game 
# Written by: you!  
puts "Welcome to 'Get My Number!'" 

#Отримуэмо ім'я гравця і виводимо вітання
print "What's your name? "  
input = gets 
name = input.chomp  
puts "Welcome, #{name}!"

#Збереження випадкового числа
puts "I've got a random number between 1 and 100." 
puts "Can you guess it?" 
target = rand(100) + 1

#Відслідковування кількості спроб
num_guesses = 0

#Продовження гри
guessed_it = false

until num_guesses == 10 || guessed_it

 puts "You`ve got #{10-num_guesses} guesses left."
 print "Make a guess: "
 guess = gets.to_i
 
 num_guesses += 1 

 #Порівняння введеного числа з загаданим
 #і виведення відповідного повідомлення
 if guess < target 
   puts "oops. your guess was LOW"
 elsif guess > target
   puts "Oops. Your guess was HIGH."
 elsif guess == target
   puts "Good job #{name}"
   puts "Your guessed my number in #{num_guesses} guesses!"
   guessed_it = true
 end
end

# Якщо спроб не залишилось, вивести загадане число .
unless guessed_it
  puts "Sorry. You dodn't get my number. (It was #{target})"
end