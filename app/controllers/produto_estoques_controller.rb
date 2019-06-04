class ProdutoEstoquesController < ApplicationController
  before_action :set_produto_estoque, only: [:show, :edit, :update, :destroy]

  # GET /produto_estoques
  # GET /produto_estoques.json
  def index
    @produto_estoques = ProdutoEstoque.all
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

    respond_to do |format|
      if @produto_estoque.save
        format.html { redirect_to @produto_estoque, notice: 'Produto estoque was successfully created.' }
        format.json { render :show, status: :created, location: @produto_estoque }
      else
        format.html { render :new }
        format.json { render json: @produto_estoque.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /produto_estoques/1
  # PATCH/PUT /produto_estoques/1.json
  def update
    respond_to do |format|
      if @produto_estoque.update(produto_estoque_params)
        format.html { redirect_to @produto_estoque, notice: 'Produto estoque was successfully updated.' }
        format.json { render :show, status: :ok, location: @produto_estoque }
      else
        format.html { render :edit }
        format.json { render json: @produto_estoque.errors, status: :unprocessable_entity }
      end
    end
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
