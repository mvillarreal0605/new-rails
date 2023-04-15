class RenameTypeOnInquiries < ActiveRecord::Migration[7.0]
  def change
    rename_column :inquiries, :type, :interest
  end
end
