class ClientesController < ApplicationController

  def index
    @cliente = Cliente.all
    @users = User.all
    authorize @users
  end

  def new
    @cliente = Cliente.new
  end

  def create
    @cliente = Cliente.new(cliente_params)
    @cliente.endereco_id = Endereco.all.last.id
    if @cliente.save
      redirect_to @cliente
    else
      render 'new'
    end
  end

  def show
    @cliente = Cliente.find(params[:id])
  end

  def edit
    @cliente = Cliente.find(params[:id])
  end

  def update
    @cliente = Cliente.find(params[:id])

    if @cliente.update(cliente_params)
      redirect_to edit_endereco_path(Endereco.find_by_id(@cliente.endereco_id))
    else
      render 'edit'
    end
  end

  def destroy
    @cliente = Cliente.find(params[:id])
    @endereco = Endereco.find_by_id(@cliente.endereco_id)
    @endereco.destroy
    @cliente.destroy

    redirect_to clientes_path
  end
  private
  def cliente_params
    params.require(:cliente).permit(:nome, :cpf,:telefone)
  end
end
