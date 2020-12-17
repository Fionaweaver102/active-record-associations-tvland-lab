class Show < ActiveRecord::Base
  has_many :characters 
  has_many :actors, through: :characters
  belongs_to :network

  def actors_list
     self.actors.collect do |actor|
      "#{actor.full_name}"
     end 
  end 

  def build_network
    self.character = Character.find_or_create_by("#{self.character.name}")
  end 
end