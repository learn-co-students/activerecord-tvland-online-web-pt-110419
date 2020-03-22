class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    name = "#{self.first_name} #{self.last_name}"
    name
  end

  def list_roles
    self.characters.collect do |char|
      result = "#{char.name} - #{char.show.name}"  
      result
    end
  end
end