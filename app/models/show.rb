require 'pry'
class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters
  belongs_to :network

  def actors_list
    # binding.pry
    actors.map do |character|
      "#{character.first_name} #{character.last_name}"
    end
  end


end
