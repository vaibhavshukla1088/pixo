class CreateJobOpenings < ActiveRecord::Migration[7.0]
  def change
    create_table :job_openings do |t|
      t.string :title
      t.string :one_line_description
      t.string :employment_type
      t.string :location
      t.string :experience_level
      t.text :brief_description
      t.timestamps
    end
  end
end
