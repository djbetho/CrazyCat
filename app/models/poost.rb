class Poost < ApplicationRecord
 
  has_many :comeents, dependent: :destroy 
  has_many :reactions, dependent: :destroy
  has_many :ussers, through: :reactions
  has_many :poosts, through: :reactions

  has_one_attached :image

  Kinds = %w[like dislike].freeze

  KindsSpanish = {"like" => "Me gusta", "dislike" => "No me gusta"}.freeze
end
  