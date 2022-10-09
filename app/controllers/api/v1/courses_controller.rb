class Api::V1::CoursesController < Api::V1::BaseController
  def index
    @courses = policy_scope(Course)
  end

  def show
    @course = Course.find(params[:id])
    authorize @course
    # @students = @course.subscriptions.users
  end
end
