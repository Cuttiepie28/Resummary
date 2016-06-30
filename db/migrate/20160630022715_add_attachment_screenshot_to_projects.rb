class AddAttachmentScreenshotToProjects < ActiveRecord::Migration
  def up
    add_attachment :projects, :screenshot
    end


  def down
    remove_attachment :projects, :screenshot
  end
end
