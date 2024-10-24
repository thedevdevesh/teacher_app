class StudentsController < ApplicationController
  before_action :authenticate_teacher!
  before_action :set_student, only: %i[edit update destroy]

  def index
    @students = current_teacher.students
  end

  def new
    @student = Student.new
  end

  def create
    @student = current_teacher.students.build(student_params)
    if @student.save
      flash[:notice] = 'Student was successfully created.'
      respond_to do |format|
        format.html { redirect_to students_path }
        format.js   # This will render create.js.erb
      end
    else
      flash.now[:alert] = 'Error creating student. Please try again.'
      respond_to do |format|
        format.html { redirect_to students_path }
        format.js   # This will render create.js.erb
      end
    end
  end

  def edit; end

  def update
    if @student.update(student_params)
      flash[:notice] = 'Student was successfully updated.'
      respond_to do |format|
        format.html { redirect_to students_path }
        format.js   # This will render update.js.erb
      end
    else
      flash.now[:alert] = 'Error updating student. Please try again.'
      respond_to do |format|
        format.html { redirect_to students_path }
        format.js   # This will render update.js.erb
      end
    end
  end

  def destroy
    @student.destroy
    flash[:notice] = 'Student was successfully deleted.'
    respond_to do |format|
      format.html { redirect_to students_path }
      format.js # This will render destroy.js.erb
    end
  end

  private

  def set_student
    @student = current_teacher.students.find(params[:id])
  end

  def student_params
    params.require(:student).permit(:name, :subject, :marks)
  end
end
