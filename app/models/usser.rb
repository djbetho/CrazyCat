class Usser < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         

  has_many :comeents
  has_many :poosts , through: :reactions
  has_many :reactions

  has_one_attached :avatar

  
  enum :role, [:normal_user,:admin]

  
 
  validates :avatar, presence: true 
end
