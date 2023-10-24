class CreateServiceCustomservices < ActiveRecord::Migration[7.0]
  def change
    create_table :service_customservices do |t|
      t.string :heading, default: " ", null: false
      t.string :service_first, default: " ", null: false
      t.string :service_second, default: " ", null: false
      t.string :service_third, default: " ", null: false

      t.timestamps
    end
  end
end
