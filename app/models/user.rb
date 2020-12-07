class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  validates :encrypted_password, :nickname, :last_name, :first_name,
            :last_name_kana, :first_name_kana, :birthday, presence: true
  validates :email, presence: true, uniqueness: true

end
