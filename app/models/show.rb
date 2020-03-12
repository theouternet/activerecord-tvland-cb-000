class Show < ActiveRecord::Base
  has_many :characters
  belongs_to :network
  has_many :actors, through: :characters
  def actors_list
  self.actors.map{|x| x.full_name}
end
end