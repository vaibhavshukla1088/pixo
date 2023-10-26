class AddUpdatedByToJobOpenings < ActiveRecord::Migration[7.0]
  def change
    add_column :job_openings, :updated_by, :string
  end
end
