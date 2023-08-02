class Reaction < ApplicationRecord
  belongs_to :usser
  belongs_to :poost, optional: true
  belongs_to :comeent, optional: true
  # se permite que la relación sea opcional a nivel de modelo
end
