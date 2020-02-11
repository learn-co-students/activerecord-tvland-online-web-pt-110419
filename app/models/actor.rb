class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    self.first_name + " " + self.last_name
  end

  def list_roles
    array = []
    self.characters.each do |object|
      array << object.name
    end
    self.shows.each do |object|
      array << object.name
    end
    new_array = []
    new_array << array.join(" - ")
    new_array
  end

end
