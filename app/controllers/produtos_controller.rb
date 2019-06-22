class ProdutosController < ApplicationController
  def index
    @produto = Produto.all
    @users = User.all
    authorize @users
  end

  def new
    @produto = Produto.new
  end

  def create
    @produto = Produto.new(produto_params)
    crup2(@produto, @produto.save, 'new')
  end

  def show
    @produto = Produto.find(params[:id])
  end

  def edit
    @produto = Produto.find(params[:id])
  end

  def update
    @produto = Produto.find(params[:id])
    crup2(@produto, @produto.update(produto_params), 'edit')
  end

  def destroy
    @produto = Produto.find(params[:id])
    @produto.destroy

    redirect_to produtos_path
  end

  private
  def produto_params
    params.require(:produto).permit(:descricao, :preco)
  end
end
