class AddApellateFieldsToCecComplaint < ActiveRecord::Migration
  def change
    add_column :cec_complaints, :appellate_author, :string
    add_column :cec_complaints, :appellate_author_phone, :string
    add_column :cec_complaints, :appellate_name, :string
    add_column :cec_complaints, :appellate_written_at, :datetime
    add_column :cec_complaints, :appellate_request, :string
    add_column :cec_complaints, :appellate_answered_at, :datetime
    add_column :cec_complaints, :appellate_result, :string
    add_column :cec_complaints, :appellate_desicion_basis, :text
    add_column :cec_complaints, :appellate_additional_info, :text
  end
end
