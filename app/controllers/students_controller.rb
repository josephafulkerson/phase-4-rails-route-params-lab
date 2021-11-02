class StudentsController < ApplicationController

  def index
    students = Student.all
    if params[:name]
      students = students.select {|student| student.first_name == params[:name] || student.last_name == params[:name] }
    end
    render json: students
  end

  def first
    students = Student.find(params[:id])
    render json: students
  end

end
