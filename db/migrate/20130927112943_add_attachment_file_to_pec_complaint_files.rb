class AddAttachmentFileToPecComplaintFiles < ActiveRecord::Migration
  def self.up
    change_table :pec_complaint_files do |t|
      t.attachment :file
    end
  end

  def self.down
    drop_attached_file :pec_complaint_files, :file
  end
end
