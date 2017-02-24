class UpdatesController < ApplicationController

    def index
      @updates = Update.all
      # @updates = Update.find_by_project_id(params[:project_id])
            # note: just show top ten, filter specific project to render
      respond_to do |format|
        format.html
        format.json { render json: @updates }
      end
    end

    def new
      @update = Update.new
    end

    def create
      @update = @project.updates.build(update_params)
      # @update.user = current_user
      respond_to do |format|
        format.html
        format.json { render json: @resource }
      end

    end

    def show

    end


    def edit
    end

    def destroy
    end

    private

    def update_params
      params.require(:comment).permit(:message)
    end

    def load_project
      @project = Project.find(params[:project_id])
    end

end
