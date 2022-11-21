require './app'

# The "main" application is an entry point to start with the code. It is executed with the command "ruby main.rb"
class Main
  system('cls')
  system('clear')
  app = App.new
  app.show_the_menu
end
