class ContasController < ApplicationController

  def index
    @contas_recebers = ContasReceber.all
  end

  def new
    @contas_receber = ContasReceber.new
  end

  def create
    @contas_receber = ContasReceber.new(conta_params)
    respond_to do |format|
      if @contas_receber.save
          format.html { redirect_to contas_path, notice:'Conta recebida com sucesso' }
      else
          format.html { render action: "new" }
      end
    end
  end

  private

    def set_params

    end

    def conta_params
      params.require(:contas_receber).permit(:valor, :agenda_id)
    end
end
