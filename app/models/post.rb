class Post < ActiveRecord::Base
  include ActiveModel::ForbiddenAttributesProtection

  has_attached_file :watercolor, :styles => {:large => "450x450>", :medium => "375x375>", :thumb => "100x100>"}, :default_url => "/images/:style/missing.png"

  acts_as_taggable

  private

    def post_params
      params.require(:post).permit(:name, :title, :content, :watercolor, :tag_list, :intro)
    end

end
