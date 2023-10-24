class CreateOnDemandBanners < ActiveRecord::Migration[7.0]
  def change
    create_table :on_demand_banners do |t|
      t.string :main_title, default: "", null: false
      t.string :main_description, default: "", null: false
      t.string :head, default: "", null: false
      t.string :body1, default: "", null: false
      t.string :buttontext, default: "", null: false
      t.string :buttonlink, default: "", null: false
      t.string :body2, default: "", null: false
      t.timestamps
    end
  end
end
