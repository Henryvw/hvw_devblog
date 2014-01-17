class AddAttachmentWatercolorToPosts < ActiveRecord::Migration
  def self.up
    change_table :posts do |t|
      t.attachment :watercolor
    end
  end

  def self.down
    drop_attached_file :posts, :watercolor
  end
end
