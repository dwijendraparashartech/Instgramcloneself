class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :username,presence: true,
                    format: { with: /\A(?=.*[a-z])[a-z\d]+\Z/i },
                    uniqueness: { case_sensitive: false }

end
