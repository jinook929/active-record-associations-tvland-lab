class Show < ActiveRecord::Base
  has_many :characters
  belongs_to :network
  has_many :actors, through: :characters

  def actors_list
    self.actors.collect {|actor|
      actor.full_name
    }
    # Array.new.tap {|arr|
    #   self.actors.each {|actor|
    #     arr.push(actor.full_name)
    #   }
    # }
  end

  # def build_network(option={})
  #   self.network_id = Network.create_or_find_by(option).id
  # end

  # def network
  #   Network.find(self.network_id)
  # end
end