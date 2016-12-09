class FichasController < ApplicationController

  before_action :set_params, only: [:edit, :update, :destroy]

  add_breadcrumb "Fichas Animais", :fichas_path

  def index
    add_breadcrumb "Nova Ficha", :new_ficha_path
    @fichas = FichaAnimal.all
  end

  def new
    @ficha_animal = FichaAnimal.new
  end

  def edit
    add_breadcrumb "Nova Ficha", :new_ficha_path
    add_breadcrumb "Editar", :edit_ficha_path
  end

  def destroy

  end

  def create
    @ficha_animal = FichaAnimal.new(ficha_params)
    respond_to do |format|
      if @ficha_animal.save
        format.html { redirect_to fichas_path, notice:'Ficha criada com sucesso' }
      else
        format.html { render action: "new" }
      end
    end
  end

  private

    def set_params
      @ficha_animal = FichaAnimal.find(params[:id])
    end

    def ficha_params
      params.require(:ficha_animal).permit(:data_ultima_vacina, :nome_vacina, :data_proxima_vacina, :nome_proxima_vacina, :dose, :animal_id)
    end

end
