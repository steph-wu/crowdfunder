class CommentsController < ApplicationController
  before_action :load_project

  def new
    @comment = Comment.new
  end

  # def index
  #   @comments = Comment.all
  # end

  def show
  end

  def create
    @comment = @project.comments.build(comment_params)
    @comment.user = current_user

    respond_to do |format|
      if @comment.save
        format.html { redirect_to project_url(@project.id), notice: 'Comment added!'}
        format.js {} # server will look at comment/create.js.erb
      else
        format.html {render 'project/show', notice: 'Zere was an error!'}
        format.js {}
      end
    end
  end

  def destroy
  end


private

  def comment_params
    params.require(:comment).permit(:message)
  end

  def load_project
    @project = Project.find(params[:project_id])
  end

end
