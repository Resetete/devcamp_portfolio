class PagesController < ApplicationController
  def about
  end

  def contact
  end

  def home
    @posts = Blog.all
    @skills = Skill.all
    @page_title = "#{current_user.first_name}'s Portfolio Website"
  end
end
