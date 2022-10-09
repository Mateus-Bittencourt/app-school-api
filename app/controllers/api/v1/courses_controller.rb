class Api::V1::CoursesController < Api::V1::BaseController
  before_action :set_course, only: %i[show update]

  def index
    @courses = policy_scope(Course)
  end

  def show; end

  def update
    if @course.update(course_params)
      render :show
    else
      render_error
    end
  end

  private

  def set_course
    @course = Course.find(params[:id])
    authorize @course
  end

  def course_params
    params.require(:course).permit(:name, :description)
  end

  def render_error
    render json: { errors: @course.errors.full_messages },
           status: :unprocessable_entity
  end
end
