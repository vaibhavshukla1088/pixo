class CreateFooters < ActiveRecord::Migration[7.0]
  def change
    create_table :footers do |t|
      t.string :emailId, default: "", null: false
      t.string :skypeId, default: "", null: false
      t.string :behanceLink, default: "#", null: false
      t.string :instagramLink, default: "#", null: false
      t.string :linkedinLink, default: "#", null: false
      t.string :mainheading, default: "", null: false
      t.string :head1, default: "", null: false
      t.string :head1_body1, default: "", null: false
      t.string :head1_body2, default: "", null: false
      t.string :head2, default: "", null: false
      t.string :head2_body, default: "", null: false
      t.string :head3, default: "", null: false
      t.string :head3_body1, default: "", null: false
      t.string :head3_body2, default: "", null: false
      t.string :head3_body3, default: "", null: false
      t.string :head3_body4, default: "", null: false
      t.string :head3_body5, default: "", null: false
      t.string :Contact_heading, default: "", null: false
      t.string :contact_head1, default: "", null: false
      t.string :contact_head1_body1, default: "", null: false
      t.string :contact_head1_body2, default: "", null: false
      t.string :contact_head2, default: "", null: false
      t.string :contact_head2_body1, default: "", null: false

      t.timestamps
    end
  end
end
