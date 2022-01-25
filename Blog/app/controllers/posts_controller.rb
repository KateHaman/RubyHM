class PostsController < ApplicationController
  before_action :set_post, only: %i[show edit update destroy]
  after_action :track_view, only: :show
  before_action :authorize, only: %i[edit update create new]
  before_action :author?, only: %i[edit update destroy]
  before_action :track_visit, only: %i[index show]

  def index
    @posts = Post.includes(:author).order(created_at: :desc)
  end

  def search
    @posts = Post.where('title LIKE ?', "%#{params[:q]}%")
  end

  def show
    @comments_scope = params[:comments]
    @comments = if @comments_scope == '0'
                  @post.comments.unpublished
                else
                  @post.comments.published
                end
  end

  def new
    @post = Post.includes(:author).new
  end

  def edit
    if current_author == @post.author
    end
  end

  def create
    @post = Post.new(post_params)

    respond_to do |format|
      if @post.save
        format.html { redirect_to post_url(@post), notice: 'Post was successfully created.' }
        format.json { render :show, status: :created, location: @post }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @post.update(post_params)
        format.html { redirect_to post_url(@post), notice: 'Post was successfully updated.' }
        format.json { render :show, status: :ok, location: @post }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    if current_author == @post.author
      @post.destroy

      respond_to do |format|
        format.html { redirect_to posts_url, notice: 'Post was successfully destroyed.' }
        format.json { head :no_content }
      end
    end
  end

  private

  def set_post
    @post = Post.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:title, :content, :image).merge(author_id: current_author.id)
  end

  def track_view
    @post.views.create
  end

  def track_visit
    cookies[:visits_count] = cookies[:visits_count].to_i + 1
  end
end
