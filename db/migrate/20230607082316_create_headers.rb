class CreateHeaders < ActiveRecord::Migration[7.0]
  def change
    create_table :headers do |t|
      t.string :navbar1, default: "", null: false
      t.string :navbar2, default: "", null: false
      t.string :navbar3, default: "", null: false
      t.string :navbar4, default: "", null: false
      t.string :navbar5, default: "", null: false
      t.string :buttontext, default: "", null: false
      t.string :buttonlink, default: "", null: false
      t.string :iconLink, default: "", null: false

      t.timestamps
    end
  end
end
