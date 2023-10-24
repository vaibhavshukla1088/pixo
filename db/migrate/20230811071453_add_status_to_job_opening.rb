class AddStatusToJobOpening < ActiveRecord::Migration[7.0]
  def change
    add_column :job_openings, :is_active, :boolean, :default => false
  end
end
