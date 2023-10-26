class AddPhoneNumberToOnDemandForms < ActiveRecord::Migration[7.0]
  def change
    add_column :on_demand_forms, :phone, :string
    add_column :on_demand_forms, :country_code, :string
  end
end
