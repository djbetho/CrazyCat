class Reaction < ApplicationRecord
  belongs_to :usser, optional: true
  belongs_to :poost, optional: true
  belongs_to :comeent, optional: true
  # se permite que la relación sea opcional a nivel de modelo
  validates :kind, acceptance: {
    accept: %w[like dislike boring neutral uninterested interested],
    }
  def self.kinds
    %w[like dislike boring neutral uninterested interested]
  end   
  
end
