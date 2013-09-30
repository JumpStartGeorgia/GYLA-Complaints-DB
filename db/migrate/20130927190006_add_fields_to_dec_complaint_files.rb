class AddFieldsToDecComplaintFiles < ActiveRecord::Migration
  def change
    add_column :dec_complaint_files, :dec_complaint_id, :integer
    add_column :dec_complaint_files, :field_type, :string
  end
end
