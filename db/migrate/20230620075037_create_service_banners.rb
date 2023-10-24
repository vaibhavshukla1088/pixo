class CreateServiceBanners < ActiveRecord::Migration[7.0]
  def change
    create_table :service_banners do |t|
      t.string :title, default: " ", null: false
      t.string :description, default: " ", null: false

      t.timestamps
    end
  end
end
