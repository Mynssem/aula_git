class ProductsController < ApplicationController
  # função responsável por chamar o arquivo homônimo new.html.erb, que está
  # contido dentro da pasta app/views/products, através de requisição
  # http GET
  def new
    # carrega a variável @product com um novo objeto do tipo Product
    # para ser usado no formulário do arquivo app/views/products/new.html.erb
    @product = Product.new
  end

  # função responsável por criar um novo objeto do tipo Product, incializá-lo
  # com os parâmetros preenchidos no formulário contido em
  # app/views/products/new.html.erb através de requisição html POST
  # Não se esquecer de validar todas as operações de bd
  # com o if else
  def create
    @product = Product.new(product_params)
    if @product.save
      # se a operação de salvar o objeto no bd for bem sucedida
      # irá redirecionar para a página app/views/products/index.html.erb
      # que é controlada pela função index
      # exibindo uma mensagem de sucesso na operação
      flash[:notice] = "Produto adicionado com sucesso."
      redirect_to products_path
    else
      # se a operação falhar, irá RENDERIZAR o arquivo
      # app/views/products/new.html.erb
      # (ou seja, não irá chamar a função new, apenas o arquivo html mesmo)
      # e usará a variável @product definida aqui nessa função
      # usem .now sempre antes de render ;)
      flash.now[:alert] = "Algo errado aconteceu."
      render "new"
    end
  end

  # função responsável por chamar o arquivo homônimo index.html.erb, que está
  # contido dentro da pasta app/views/products, através de requisição
  # http GET
  def index
    # irá buscar no bd TODOS os registros contidos na tabela products
    # instanciá-los como objetos da classe Product
    # e armazená-los na variável @products
    @products = Product.all
  end

  # função responsável por excluir um registro da tabela products do bd
  # através de requisião http DELETE
  def destroy
    # irá procurar no bd um loja com o id informado nos parâmetros
    @product = Product.find(params[:id])
    # irá excluir o produto do bd
    @product.destroy
    # irá redirecionar para o função index
    redirect_to products_path
  end

  private

  # cria uma lista de exclusividade para os parâmetros passados pelo
  # formulário em app/views/products/new.html.erb
  # ou seja, só os parâmetros que estão nessa lista
  # terão permissão para serem passados adiante
  # (prática de segurança)
  def product_params
    # params é a hash padrão de transferência de parâmetros
    # para toda requisição http na nossa aplicação Rails
    params.require(:product).permit(:name, :quantity, :validity, :provider)
  end
end
