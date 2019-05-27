class ProdutosController < ApplicationController
  def index
    @produto = Produto.all
  end

  def new
    @produto = Produto.new
  end

  def create
    @produto = Produto.new(produto_params)
    if @produto.save
      redirect_to @produto
    else
      render 'new'
    end
  end

  def show
    @produto = Produto.find(params[:id])
  end

  def edit
    @produto = Produto.find(params[:id])
  end

  def update
    @produto = Produto.find(params[:id])

    if @produto.update(produto_params)
      redirect_to @produto
    else
      render 'edit'
    end
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
