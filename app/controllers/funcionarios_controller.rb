class FuncionariosController < ApplicationController
  before_action :set_funcionario, only: [:show, :edit, :update, :destroy]
  add_breadcrumb "Funcionários", :funcionarios_path

  def index
    add_breadcrumb "Novo Funcionário", :new_funcionario_path
    @funcionarios = Funcionario.all
  end

  def show
  end

  def new
    @funcionario = Funcionario.new
  end

  def edit
  end

  def create
    @funcionario = Funcionario.new(funcionario_params)
    respond_to do |format|
      if @funcionario.save
        format.html { redirect_to funcionarios_path, notice: 'Funcionário cadastrado com sucesso.' }
      else
        format.html { render action: "new" }
      end
    end
  end

  def update
    respond_to do |format|
      if @funcionario.update(funcionario_params)
        format.html { redirect_to funcionarios_path, notice: 'Funcionário atualizado com sucesso.' }
      else
        format.html { render action: "edit" }
      end
    end
  end

  def destroy
    @funcionario.destroy
    respond_to do |format|
      format.html { redirect_to funcionarios_path, notice: 'Funcionário excluído com sucesso.' }
    end
  end

  private
    def set_funcionario
      @funcionario = Funcionario.find(params[:id])
    end

    def funcionario_params
      params.require(:funcionario).permit(:nome, :funcao, :endereco, :bairro, :cep, :uf, :login, :senha, :fone, :celular, :email)
    end
end
