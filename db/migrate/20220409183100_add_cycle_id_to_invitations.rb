class AddCycleIdToInvitations < ActiveRecord::Migration[7.0]
  def change
    add_reference :invitations, :cycle, foreign_key: true
  end
end
