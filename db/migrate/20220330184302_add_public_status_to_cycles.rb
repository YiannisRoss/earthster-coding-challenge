class AddPublicStatusToCycles < ActiveRecord::Migration[7.0]
  def change
    add_column :cycles, :public_status, :boolean, default: false
  end
end
