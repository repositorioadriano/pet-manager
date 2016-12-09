class AnimalsController < ApplicationController

  before_action :set_params, only:[:edit, :show, :update, :destroy]
  add_breadcrumb "Animais", :animals_path

  def index
    add_breadcrumb "Novo Animal", :new_animal_path
    @animals = Animal.select(:id, :nome, :cor, :dt_nascimento, :raca, :sexo, :cliente_id)
  end

  def new
    @animal = Animal.new
  end

  def edit

  end

  def show

  end

  def create
    @animal = Animal.new(animal_params)
    respond_to do |format|
      if @animal.save
        format.html { redirect_to animals_path, notice:'Animal cadastrado com sucesso' }
      else
        format.html { render action: "new" }
      end
    end
  end

  def update
    respond_to do |format|
      if @animal.update(animal_params)
        format.html { redirect_to animals_path, notice:'Animal atualizado com sucesso' }
      else
        format.html { render action: "edit" }
      end
    end
  end

  def destroy
    respond_to do |format|
      if @animal.destroy
        format.html { redirect_to animals_path, notice:'Animal excluído com sucesso' }
      else
        format.html { render action: "index", notice: 'Erro ao excluir animal'}
      end
    end
  end

  private

    def set_params
      @animal = Animal.find(params[:id])
    end

    def animal_params
      params.require(:animal).permit(:nome, :cor, :dt_nascimento, :raca, :sexo, :cliente_id)
    end

end
