class User < ApplicationRecord
  rolify
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :jobs
  has_many :information
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # Method combines users first and last name
  def full_name
    "#{first_name} #{last_name}"
  end

end
