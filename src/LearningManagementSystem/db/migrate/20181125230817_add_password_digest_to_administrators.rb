class AddPasswordDigestToAdministrators < ActiveRecord::Migration[5.2]
  def change
    add_column :administrators, :password_digest, :string
  end
end
