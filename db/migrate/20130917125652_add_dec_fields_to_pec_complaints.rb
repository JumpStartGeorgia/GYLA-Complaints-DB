class AddDecFieldsToPecComplaints < ActiveRecord::Migration
  def change
    add_column :pec_complaints, :dec_author, :string
    add_column :pec_complaints, :dec_author_phone, :string
    add_column :pec_complaints, :dec_written_at, :datetime
    add_column :pec_complaints, :dec_request, :string
    add_column :pec_complaints, :dec_answered_at, :datetime
    add_column :pec_complaints, :dec_result, :string
    add_column :pec_complaints, :dec_appeal, :boolean
    add_column :pec_complaints, :dec_desicion_basis, :text
    add_column :pec_complaints, :dec_additional_info, :text
  end
end
