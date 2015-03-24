class ParentsController < ApplicationController
  before_action :set_parent, only: [:show, :edit, :update, :destroy]
  before_action :verify_login

  # GET /parents
  # GET /parents.json
  def index
    @parents = Parent.all
  end

  # GET /parents/1
  # GET /parents/1.json
  def show
    @students = Student.all
  end

  # GET /parents/new
  def new
    @parent = Parent.new
    @parent.children << Child.new
    @students = Student.all
  end

  # GET /parents/1/edit
  def edit
    @students = Student.all
  end

  # POST /parents
  # POST /parents.json
  def create
    @parent = Parent.new(parent_params)
    respond_to do |format|
      if @parent.save
        format.html { redirect_to @parent, notice: 'Responsável cadastrado com sucesso.' }
        format.json { render :show, status: :created, location: @parent }
      else
        format.html { 
          @students = Student.all
          render :new 
        }
        format.json { render json: @parent.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /parents/1
  # PATCH/PUT /parents/1.json
  def update
    respond_to do |format|
      if @parent.update(parent_params)
        format.html { redirect_to @parent, notice: 'Responsável atualizado com sucesso.' }
        format.json { render :show, status: :ok, location: @parent }
      else
        format.html { 
          @students = Student.all
          render :edit 
        }
        format.json { render json: @parent.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /parents/1
  # DELETE /parents/1.json
  def destroy
    @parent.destroy
    respond_to do |format|
      format.html { redirect_to parents_url, notice: 'Responsável excluido com sucesso.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_parent
      @parent = Parent.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def parent_params
      params.require(:parent).permit(:name, :birth, :sex, :cpf, :street, :cep, :comp, :neighborhood, :city, :state, :phone, children_attributes: [:id, :student_id, :_destroy])
    end

    def update_students
      p = params[:parent][:students_attributes]
      @parent.students.clear
      p.each do |a|
        unless a[1][:_destroy] == "true"
          stud = Student.find(a[1][:id])
          @parent.students << stud
        end
      end
    end
end
