class FornecedorsController < ApplicationController
  before_action :set_fornecedor, only: [:edit, :update, :destroy]
  add_breadcrumb "Fornecedores", :fornecedors_path

  def index
    add_breadcrumb "Novo Fornecedor", :new_fornecedor_path
    @fornecedors = Fornecedor.all
  end

  def new
    @fornecedor = Fornecedor.new
  end

  def edit
  end

  def create
    @fornecedor = Fornecedor.new(fornecedor_params)
    respond_to do |format|
      if @fornecedor.save
        format.html { redirect_to fornecedors_path, notice: 'Fornecedor cadastrado com sucesso.' }
      else
        format.html { render :new }
      end
    end
  end

  def update
    respond_to do |format|
      if @fornecedor.update(fornecedor_params)
        format.html { redirect_to fornecedors_path, notice: 'Fornecedor atualizado com sucesso.' }
      else
        format.html { render action: "edit" }
      end
    end
  end

  def destroy
    @fornecedor.destroy
    respond_to do |format|
      format.html { redirect_to fornecedors_path, notice: 'Fornecedor excluído com sucesso.' }
    end
  end

  private

    def set_fornecedor
      @fornecedor = Fornecedor.find(params[:id])
    end

    def fornecedor_params
      params.require(:fornecedor).permit(:razao_social, :fantasia, :cnpj, :endereco, :bairro, :cidade, :cep, :telefone, :email)
    end
end
