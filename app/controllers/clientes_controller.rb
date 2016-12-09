class ClientesController < ApplicationController

  before_action :set_params, only:[:edit, :show, :update, :destroy]
  add_breadcrumb "Clientes", :clientes_path

  def index
    add_breadcrumb "Novo Cliente", :new_cliente_path
    @clientes = Cliente.order(:nome).page params[:page]
  end

  def new
    @cliente = Cliente.new
  end

  def create
    @cliente = Cliente.new(cliente_params)
    respond_to do |format|
      if @cliente.save
        format.html { redirect_to clientes_path, notice:'Cliente cadastrado com sucesso' }
      else
        format.html { render action: "new" }
      end
    end
  end

  def edit
    add_breadcrumb "Novo Cliente", :new_cliente_path
    add_breadcrumb "Editar", :edit_cliente_path
  end

  def update

  end

  def destroy
    respond_to do |format|
      if @cliente.destroy
        format.html { redirect_to clientes_path, notice:'Cliente excluído com sucesso' }
      else
        format.html { render action: "index" }
      end
    end
  end

  private

    def set_params
      @cliente = Cliente.find(params[:id])
    end

    def cliente_params
      params.require(:cliente).permit(:nome, :cpf, :endereco, :bairro, :cep, :cidade, :uf, :telefone, :celular, :email, :dt_nascimento)
    end

end
