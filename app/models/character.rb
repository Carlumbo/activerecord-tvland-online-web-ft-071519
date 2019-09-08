class Character < ActiveRecord::Base
  belongs_to :show
  belongs_to :actor
  
  def say_that_thing_you_say 
    characters.collect do |character|
      "#{character.catchphrase}"
    end 
  end 
  
end