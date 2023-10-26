class AdminUser < ApplicationRecord
  validates :role, presence: true, inclusion: { in: ['admin', 'staff'], message: '%{value} is not a valid role' }
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, 
         :recoverable, :rememberable, :validatable

  def admin?
  role == 'admin'
  end

  def staff?
    role == 'staff'
    end
end
