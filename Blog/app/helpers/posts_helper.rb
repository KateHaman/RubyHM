module PostsHelper
  def show_modal?
    current_author.nil? && cookies[:visits_count].to_i >= 4
  end
end
