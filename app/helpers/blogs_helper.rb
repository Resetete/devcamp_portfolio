module BlogsHelper
  def gravatar_helper(user)
    image_tag("https://www.gravatar.com/avatar/#{Digest::MD5.hexdigest(user.email)}", width: 50)
  end

  def most_popular_topics_helper
    Blog.all.group(:topic_id).count.sort_by{|key,value| value }.reverse.to_h.keys.first(6)
  end

  def topic_name_helper(topic_id)
      Topic.where(id: topic_id).first.title
  end
end
