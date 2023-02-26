class Show < ActiveRecord::Base
    belongs_to :network
    has_many :characters
    has_many :actors, through: :characters
  
    def characters_list
      self.characters.map(&:name)
    end
  
    def actors_list
      self.actors.map(&:full_name)
    end
  end