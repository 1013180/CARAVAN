class BlogsController < ApplicationController
  def index
    @blogs = Blog.all
  end

  def show
    @blog = Blog.find(params[:id])
  end

  def new
    @blog = Blog.new
  end

  def create
    blog = Blog.new(blog_paramas)
    blog.save
    redirect_to blogs_path(blog.id)
  end

  def edit
    @blog = Blog.find(params[:id])
  end

  def update
    blog = Blog.find(params[:id])
    blog.update(blog_paramas)
    redirect_to blogs_path(blog)
  end

  private
  def blog_paramas
    params.require(:blog).permit(:title, :category, :body)
end

end