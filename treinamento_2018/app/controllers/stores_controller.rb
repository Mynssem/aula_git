class StoresController < ApplicationController
  def new
	@store = Store.new
  end

  def create
    @store = Store.new(store_params)
    if @store.save
    	flash[:notice] = "Loja criado com sucesso."
    	redirect_to stores_path
    else
      flash[:alert] = "Algo errado aconteceu"
      render "new"
    end    
  end

  def index
    @stores = Store.all
  end

  def destroy
    @stores = Store.find(params[:id])
    @stores.destroy
    redirect_to stores_path
  end

  private 

  def store_params
    params.require(:store).permit(:adress, :telephone)
  end
end
