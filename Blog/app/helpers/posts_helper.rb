module PostsHelper
  def show_modal?
    current_author.nil? && (cookies[:visits_count] % 5).zero?
  end
end
