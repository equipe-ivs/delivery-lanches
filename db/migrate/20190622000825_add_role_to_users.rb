class AddRoleToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users,:role,:integer,default: 0

    admin = User.new
    admin.email = 'admin@admin.com'
    admin.password = 'adminadmin'
    admin.role = :gerente
    admin.save!

    user = User.new
    user.email = 'user@user.com'
    user.password = 'useruser'
    user.save!
u
  end
end
