class AddFieldsToPecComplaint < ActiveRecord::Migration
  def change
    add_column :pec_complaint_files, :pec_complaint_id, :integer
    add_column :pec_complaint_files, :field_type, :string
  end
end
