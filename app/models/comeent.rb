class Comeent < ApplicationRecord
  belongs_to :usser
  belongs_to :poost
  has_many :reactions, dependent: :destroy

end
