class PagesController < ApplicationController
  def about
  end

  def contact
  end

  def home
    @posts = Blog.all
    @skills = Skill.all
  end
end
