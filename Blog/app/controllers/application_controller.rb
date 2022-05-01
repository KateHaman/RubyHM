class ApplicationController < ActionController::Base
  include Pagy::Backend

  private

  def current_author
    @current_author ||= Author.find(session[:author_id]) if session[:author_id]
  end

  helper_method :current_author

  def authorize
    redirect_to login_url, alert: 'Please log in to continue' if current_author.nil?
  end

  def post_author?
    @post = Post.find(params[:id])
    redirect_back fallback_location: root_path, notice: 'Not enough permissions' if current_author.id != @post.author_id
  end
end
