class Actor < ActiveRecord::Base
  has_many :characters
  has_many :show, through: :characters
  

    def full_name 
        # returns the first and last name of an actor
        "#{self.first_name} #{self.last_name}"
    end

    def list_roles
         characters.map{|char| "#{char.name} - #{char.show.name}"}
       
    end

end