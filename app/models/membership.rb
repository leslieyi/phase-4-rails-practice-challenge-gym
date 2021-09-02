class Membership < ApplicationRecord
  validates :client_id, uniqueness: :true 
  
  belongs_to :gym
  belongs_to :client
end
