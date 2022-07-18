class StudentsController < ApplicationController

  def index
    stude = Student.all
    render json: stude 
  end

  def grades
    stude = Student.all.order("grade DESC")
    render json: stude
  end

  def highest_grade
    stude = Student.all.order("grade DESC").first
    render json: stude
  end
end
