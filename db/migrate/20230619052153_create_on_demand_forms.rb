class CreateOnDemandForms < ActiveRecord::Migration[7.0]
  def change
    create_table :on_demand_forms do |t|
      t.string :full_name, null: false
      t.string :email, null: false
      t.string :country, null: false
      t.string :skype, default: "", null: false
      t.string :technologies, default: "", null: false
      t.string :resources, default: "", null: false
      t.string :message, default: "", null: false
      t.timestamps
    end
  end
end
