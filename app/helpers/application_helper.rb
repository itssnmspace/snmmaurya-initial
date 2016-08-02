module ApplicationHelper
  def create_asset_image_template options={}
    image = ImageAsset.image_asset_by_code(options[:image_asset_code])
    if image.present?
      image_tag image.data.url(:medium), class: options[:class], id: options[:id], alt: image.title
    else
      image_tag "static_images/default.jpg", class: options[:class], id: options[:id], alt: "SnmMaurya"
    end
  end

  def get_nested_comments comment, comment_html
    comment_html += "<div class='media-body'><p>#{comment.content}</p>"
    comment_html += "<div class='col-sm-12 text-right'>"
    comment_html += "#{link_to 'Write a comment', '#writeacomment', class: 'btn btn-info btn-xs write-a-comment', data: {nested: "Comment", nested_id: comment.id}} | "
    comment_html += "<small>#{comment.created_at.strftime('%b %m %Y at %H:%M')}</small> | "
    comment_html += "By #{link_to @blog.user.try(:username), '#'}"
    comment_html += "</div>"
    comment_html += "<div class='snm-comment-border-spacer'></div>"
    unless comment.comments.where("nested='Comment'").present?
      comment_html += "</div>"
    else
      # comment_html += "</div>"
      comment.comments.where("nested='Comment'").each do |com|
        comment_html += get_nested_comments(com, "<div class='media'>")
        comment_html += "</div>"
      end
    end
    # binding.pry
     comment_html += "</div>"
     comment_html.html_safe
  end

  def create_flash_message_and_class
    flash[:success].present? ? [flash[:success], "success"] : (flash[:notice].present? ? [flash[:notice], "success"] : [flash[:error], "danger"])
  end
end
