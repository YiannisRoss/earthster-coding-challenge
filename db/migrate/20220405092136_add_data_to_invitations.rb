class AddDataToInvitations < ActiveRecord::Migration[7.0]
  def change
    add_column :invitations, :customer_email, :string
    add_column :invitations, :message, :text
  end
end
