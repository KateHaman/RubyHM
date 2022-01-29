class AuthorsController < ApplicationController
  before_action :set_author, only: %i[show edit update]
  before_action :authorize, only: %i[edit update show]

  def show
    redirect_back fallback_location: root_path, notice: 'Please log in to go to your profile page.' if current_author.nil?
  end

  def new
    @author = Author.new
  end

  def create
    @author = Author.new(author_params)
    if @author.save
      session[:author_id] = @author.id
      redirect_to root_url, notice: 'Thank you for signing up!'
    else
      render 'new'
    end
  end

  def edit; end

  def update
    if current_author.update(author_params)
      redirect_to author_url(current_author), notice: 'Author was successfully updated.'
    else
      render :edit, status: :unprocessable_entity
    end
    redirect_back fallback_location: root_path, notice: 'Please log in to edit your profile page.' if current_author.nil?
  end

  private

  def author_params
    params.require(:author).permit(:first_name, :last_name, :email, :password, :password_confirmation, :image, :gender, :birthday)
  end

  def set_author
    @author = Author.find(params[:id])
  end
end
