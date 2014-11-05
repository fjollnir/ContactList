class Contact
 
  attr_accessor :name, :email

  def initialize(name, email)
    # TODO: assign local variables to instance variables
    @name = name
    @email = email
    #@phone
  end
 
  def to_s
    # TODO: return string representation of Contact
  end
 
  ## Class Methods
  class << self
    def create(name, email)
      # TODO: Will initialize a contact as well as add it to the list of contacts
     contact = Contact.new(name, email)
     @@contacts << contact #class variable
    end
 
    def find(string)
      # TODO: Will find and return contact by index
        Contact.find(string).to_s
      end
    end
 
    def all
      # TODO: Return the list of contacts, as is
      Contact.all
    end
    
    def show(id)
      # TODO: Show a contact, based on ID
      Contact.show(index).to_s

    end
    
  end
 
end