class CreateInquiries < ActiveRecord::Migration[7.0]
  def change
    create_table :inquiries do |t|
      t.string :first_name
      t.string :last_name
      t.integer :type
      t.string :email
      t.text :message

      t.timestamps
    end
  end
end
