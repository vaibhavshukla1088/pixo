class CreateApplyforms < ActiveRecord::Migration[7.0]
  def change
    create_table :applyforms do |t|
      t.string :full_name
      t.string :email_address
      t.string :contact_number 
      t.string :position
      t.string :experience
      t.string :current_ctc
      t.string :notice_period
      t.string :skill
      t.string :message
      t.boolean :pixoatic_terms
       

      t.timestamps
    end
  end
end
