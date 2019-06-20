  class ProdutoVendaController < ApplicationController
  def new
    @produto_venda = Produto_venda.new
  end

  def create
    venda = Venda.find_by_id(params[:venda_id])
    @produto_venda = venda.produto_vendas.create(produto_venda_params)
    @produto_venda.preco_venda = Produto.find_by_id(@produto_venda.produto_id).preco
    @produto_venda.save
    redirect_to venda_path(venda)
  end

  def destroy
    venda = Venda.find(params[:venda_id])
    @produto_venda = ProdutoVenda.find_by_id(params[:id])
    @produto_venda.destroy
    redirect_to venda_path(venda)
  end

  private
  def produto_venda_params
    params.require(:produto_venda).permit(:produto_id,:quantidade)
  end
end
