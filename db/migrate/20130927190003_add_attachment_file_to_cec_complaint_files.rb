class AddAttachmentFileToCecComplaintFiles < ActiveRecord::Migration
  def self.up
    change_table :cec_complaint_files do |t|
      t.attachment :file
    end
  end

  def self.down
    drop_attached_file :cec_complaint_files, :file
  end
end
