class AgendasController < ApplicationController

  responders :flash
  before_action :set_params, only:[:edit, :show, :update, :destroy]
  add_breadcrumb "Agendamentos", :agendas_path

  def index
    add_breadcrumb "Novo Agendamento", :new_agenda_path
    @agendas = Agenda.order(:updated_at).page params[:page]
  end

  def new
    @agenda = Agenda.new
  end

  def edit
    add_breadcrumb "Novo Agendamento", :new_agenda_path
    add_breadcrumb "Editar", :edit_agenda_path
  end

  def show

  end

  def create
    @agenda = Agenda.new(agenda_params)
    respond_to do |format|
      if @agenda.save
          format.html { redirect_to agendas_path, notice:'Agendamento realizado com sucesso' }
      else
          format.html { render action: 'new' }
      end
    end
  end

  def update
    respond_to do |format|
      if @agenda.update(agenda_params)
          format.html { redirect_to agendas_path, notice:'Agendamento atualizado com sucesso' }
      else
          format.html { render action: 'edit' }
      end
    end
  end

  def destroy
    respond_to do |format|
      if @agenda.destroy
          format.html { redirect_to agendas_path, notice:'Agendamento cancelado com sucesso' }
      else
          format.html { render action: "new" }
      end
    end
  end

  private

    def set_params
      @agenda = Agenda.find(params[:id])
    end

    def agenda_params
      params.require(:agenda).permit(:data_agendamento, :hora, :entrada, :saida, :status, :animal_id, :servico_id)
    end
end
