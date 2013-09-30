class AddFieldsToCecComplaintFiles < ActiveRecord::Migration
  def change
    add_column :cec_complaint_files, :cec_complaint_id, :integer
    add_column :cec_complaint_files, :field_type, :string
  end
end
