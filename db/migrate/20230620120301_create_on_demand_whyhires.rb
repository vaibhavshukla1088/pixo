class CreateOnDemandWhyhires < ActiveRecord::Migration[7.0]
  def change
    create_table :on_demand_whyhires do |t|
      t.string :main_title, default: "", null: false
      t.string :main_description, default: "", null: false
      t.string :head1, default: "", null: false
      t.string :body1, default: "", null: false
      t.string :head2, default: "", null: false
      t.string :body2, default: "", null: false
      t.string :head3, default: "", null: false
      t.string :body3, default: "", null: false
      t.string :head4, default: "", null: false
      t.string :body4, default: "", null: false
      t.string :head5, default: "", null: false
      t.string :body5, default: "", null: false
      t.string :head6, default: "", null: false
      t.string :body6, default: "", null: false
      t.string :head7, default: "", null: false
      t.string :body7, default: "", null: false
      t.string :head8, default: "", null: false
      t.string :body8, default: "", null: false
      t.timestamps
    end
  end
end
