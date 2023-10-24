class CreateServiceOurworks < ActiveRecord::Migration[7.0]
  def change
    create_table :service_ourworks do |t|
      t.string :heading1, default: " ", null: false
      t.string :description1, default: " ", null: false
      t.string :heading2, default: " ", null: false
      t.string :description2, null:false
      t.string :heading3, default: " ", null: false
      t.string :description3, default: " ", null: false
      t.string :heading4, default: " ", null: false
      t.string :description4, default: " ", null: false

      t.timestamps
    end
  end
end
