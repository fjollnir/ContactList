#This file is where the driver codes are set
require_relative 'contact'
require_relative 'contact_database'

class ContactApp

# def run
#   showMenu
#   menu
# end

def showMenu
  puts "Here is a list of available commands:"
  puts "new  - Create a new contact"
  puts "list - List all contacts"
  puts "show - Show a contact"
  puts "find - Find a contact"
end

def menu(input)
 case input
      when "New"
        newContact
      when "List"
        listContacts
      when "Find"
        find
      when "Show"
        show(index)
      when "Exit"
        puts "See ya sucka!"
        return
      else
        puts "I'm sorry, that was not an option."
        puts "Commands: New, List, Find, Show, Exit"
  end
end

def newContact
  puts "Enter name"
  name = gets.chomp
  puts "Enter email"
  email = gets.chomp
  create
  #check if contact exists? if yes put "Already exists!"
  puts "Successfully added #{@name} and #{@email}"
  #check if input is valid/invalid? if yes "Invalid! Enter again, hobo!"
end


def listContacts
  puts "List of all your contacts"
  Contact.all
end

def findContacts
  puts "Who are you looking for?"
  find
end

def exit
  puts "Bye!"
end

end

ContactApp