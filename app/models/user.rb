class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+(\.[a-z]+)\z/i
  validates :name, presence: true, length: { maximum: 50 }
  validates :email,
            presence: true,
            length: { maximum: 255 },
            format: { with: VALID_EMAIL_REGEX },
            uniqueness: { case_sensitive: false }
  validates :password, presence: true

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable


end
