class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters
  belongs_to :network

  def actors_list
    self.actors.collect{|actor| "#{actor.full_name}"}
  end

  def build_network(attributes)
    network = Network.create(attributes)
    network.shows << self
    network
  end
end
