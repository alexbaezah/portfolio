class PagesController < ApplicationController
  def home
    @posts = Blog.all
    @skills = Skill.all
    @books = Book.all
  end

  def about
  end

  def contact
  end
end
