class VendasController < ApplicationController

  def index
    @venda = Venda.all
  end

  def new
    @venda = Venda.new
  end

  def create
    @venda = Venda.new(venda_params)
    if @venda.save
      redirect_to @venda
    else
      render 'new'
    end
  end

  def edit
    @venda = Venda.find(params[:id])
  end

  def show
    @venda = Venda.find(params[:id])
  end

  def update
    @venda = Venda.find(params[:id])

    if @venda.update(venda_params)
      @venda.total = calcularTotal
      @venda.update(venda_params)
      redirect_to @venda
    else
      render 'edit'
    end
  end

  def destroy
    @venda = Venda.find(params[:id])
    @venda.destroy

    redirect_to vendas_path
  end

  private
  def venda_params
    params.require(:venda).permit(:produto_id,:cliente_id,:quantidade,:total)
  end
end
