class AddCecFieldsToDecComplaint < ActiveRecord::Migration
  def change
    add_column :dec_complaints, :cec_author, :string
    add_column :dec_complaints, :cec_author_phone, :string
    add_column :dec_complaints, :cec_written_at, :datetime
    add_column :dec_complaints, :cec_request, :string
    add_column :dec_complaints, :cec_answered_at, :datetime
    add_column :dec_complaints, :cec_result, :string
    add_column :dec_complaints, :cec_appeal, :boolean
    add_column :dec_complaints, :cec_desicion_basis, :text
    add_column :dec_complaints, :cec_additional_info, :text
  end
end
