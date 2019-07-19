class ProductController < ApplicationController
   skip_before_action :verify_authenticity_token
  def index
  end

  def manager


    c= 'swagger_ui/swagger_ui', discovery_url: 'swagger_doc.json'
  end

  def employee
    time_now = Time.now.strftime("%Y-%d-%m")
    param_fname = params[:firstName]
    param_lname = params[:lastName]
    param_dpt = params[:department]
    param_salary = params[:actualSalary]
    param_gender = params[:gender]
    param_bday = params[:birthDay]
    param_hdate = params[:hire_date]
    id_em_no = Employee.last.emp_no + 1
    dept_no = "d01" + 1.to_s
    datas = Employee.create(birth_date: params[:birthDay] , first_name: params[:firstName], last_name: params[:lastName], gender: params[:gender], emp_no: id_em_no, hire_date: param_hdate)
    dpts= Department.create(dept_no: dept_no, dept_name: param_dpt)
    render json: {"sucess": true , "data": datas , "department": dpts}
  end
end
