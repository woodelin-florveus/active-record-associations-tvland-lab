require 'pry'

class Show < ActiveRecord::Base
  has_many :characters
  belongs_to :network
  has_many :actors, through: :characters

  def actors_list
     binding.pry
    self.actors.map{|act_inst| act_inst.full_name}
  end
  
end