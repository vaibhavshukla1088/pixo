class CreateServiceIndustries < ActiveRecord::Migration[7.0]
  def change
    create_table :service_industries do |t|
      t.string :heading,default: " ", null: false
      t.string :description,default: " ", null: false

      t.timestamps
    end
  end
end
