class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # Validations       
  validates :email, uniqueness: true
  
  validates :password, :password_confirmation, presence: true, on: :create
  validates :password, confirmation: true  

  # Associations
  has_many :incidents, dependent: :delete_all

end
