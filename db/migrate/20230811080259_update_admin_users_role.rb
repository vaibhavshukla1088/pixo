class UpdateAdminUsersRole < ActiveRecord::Migration[7.0]
  def change
    AdminUser.where(role: nil).update_all(role: 'admin')
  end
end
