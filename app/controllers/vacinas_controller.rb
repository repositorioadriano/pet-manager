class VacinasController < ApplicationController

  def index
    @vacinas = Vacina.all
  end

  def new
    @vacina = Vacina.new
  end

  def create
    @vacina = Vacina.new(vacina_params)
    respond_to do |format|
      if @vacina.save
        format.html { redirect_to vacinas_path, notice:'Vacina cadastrada com sucesso' }
      else
        format.html { render action: "new" }
      end
    end
  end

  def destroy

  end

  private

    def set_params

    end

    def vacina_params
      params.require(:vacina).permit(:nome_vacina)
    end

end
