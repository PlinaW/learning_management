class LessonsController < ApplicationController
  before_action :set_lesson, only: %i[ show edit update destroy ]

  # GET /lessons/1 or /lessons/1.json
  def show
    @course = @lesson.course
  end

  # PATCH/PUT /lessons/1 or /lessons/1.json
  def update
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lesson
      @lesson = Lesson.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def lesson_params
      params.require(:lesson).permit(:title, :description, :paid, :course_id)
    end
end
