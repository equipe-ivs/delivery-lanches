class ProdutoEstoquesController < ApplicationController
  before_action :set_produto_estoque, only: [:show, :edit, :update, :destroy]

  # GET /produto_estoques
  # GET /produto_estoques.json
  def index
    @produto_estoques = ProdutoEstoque.all
    @users = User.all
    authorize @users
  end

  # GET /produto_estoques/1
  # GET /produto_estoques/1.json
  def show
  end

  # GET /produto_estoques/new
  def new
    @produto_estoque = ProdutoEstoque.new
  end

  # GET /produto_estoques/1/edit
  def edit
  end

  # POST /produto_estoques
  # POST /produto_estoques.json
  def create
    @produto_estoque = ProdutoEstoque.new(produto_estoque_params)
    crup(@produto_estoque, @produto_estoque.save, :created, :new)
  end

  # PATCH/PUT /produto_estoques/1
  # PATCH/PUT /produto_estoques/1.json
  def update
    crup(@produto_estoque, @produto_estoque.update(produto_estoque_params), :ok, :edit)
  end

  # DELETE /produto_estoques/1
  # DELETE /produto_estoques/1.json
  def destroy
    @produto_estoque.destroy
    respond_to do |format|
      format.html { redirect_to produto_estoques_url, notice: 'Produto estoque was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_produto_estoque
      @produto_estoque = ProdutoEstoque.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def produto_estoque_params
      params.require(:produto_estoque).permit(:descricao, :preco_compra, :quantidade)
    end
end
