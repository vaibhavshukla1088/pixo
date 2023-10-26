class CreateOnDemandFormfieldnames < ActiveRecord::Migration[7.0]
  def change
    create_table :on_demand_formfieldnames do |t|
      t.string :head1, default: "", null: false
      t.string :head2, default: "", null: false
      t.string :head3, default: "", null: false
      t.string :head4, default: "", null: false
      t.string :head5, default: "", null: false
      t.string :head6, default: "", null: false
      t.string :head7, default: "", null: false
      t.timestamps
    end
  end
end
