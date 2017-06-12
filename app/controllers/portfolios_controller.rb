class PortfoliosController < ApplicationController
  before_action :set_portfolio, only: [:show, :edit, :update, :destroy]
  
  def index
    @portfolio = Portfolio.all
  end
  
  def show
  end
  
  def new
    @portfolio_item = Portfolio.new
    3.times { @portfolio_item.technologies.build }
  end
  
  def edit
  end
  
  def create
    @portfolio_item = Portfolio.new(portfolio_params)
    
    if @portfolio_item.save
      redirect_to portfolios_path
    else
      render 'new'
    end
  end
  
  def update
    if @portfolio_item.update(portfolio_params)
      redirect_to portfolios_path
    else
      render 'edit'
    end
  end
  
  def destroy
    @portfolio_item.destroy
    redirect_to portfolios_path
  end
  
  private
  
  def set_portfolio
    @portfolio_item = Portfolio.find(params[:id])
  end
  
  def portfolio_params
    params.require(:portfolio).permit(:title, :subtitle, :body, :main_image, 
                   :thumb_image, technologies_attributes: [:name])
  end
  
end
