class TaskReflex < ApplicationReflex
  delegate :current_user, to: :connection

  def create
    @project = current_user.projects.find(params[:id])
    @project.tasks.create(task_params)
  end

  private

  def task_params
    params.require(:task).permit(:content)
  end
end
