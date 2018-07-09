class PortfolioPagesController < ApplicationController
  before_action :find_portfolio_item, only: [:show, :edit, :update, :destroy]
  before_action :authorize_user!, only: [:new, :create, :edit, :update, :destroy]
  layout "portfolio_pages"

  def index 
    @portfolio_items = PortfolioPage.all
  end

  def angular
    @angular_portfolio_items = PortfolioPage.angular
  end

  def rails
    @rails_portfolio_items = PortfolioPage.ruby_on_rails
  end

  def new
    @portfolio_item = PortfolioPage.new
    3.times { @portfolio_item.technologies.build }
  end 

  def edit
  end

  def create
    @portfolio_item = PortfolioPage.new portfolio_params

    if @portfolio_item.save
      redirect_to portfolio_pages_path, notice: 'Your portfolio item is now live.' 
    else
      render :new 
    end

  end

  def update
    if @portfolio_item.update portfolio_params
      redirect_to portfolio_pages_path, notice: 'Your portfolio item was successfully updated.' 
    else  
      render :new 
    end
  end

  def show
  end

  def destroy
    @portfolio_item.destroy
    redirect_to portfolios_page_url, notice: 'Record was removed!' 
  end

  private

  def find_portfolio_item
    @portfolio_item = PortfolioPage.find(params[:id])
  end 

  def portfolio_params
    params.require(:portfolio_page).permit(:title, 
                                           :subtitle, 
                                           :body,
                                           technologies_attributes: [:name])
  end

  def authorize_user!
    unless can?(:manage, @portfolio_item)
      flash[:alert] = 'Access Denied!'
      redirect_to portfolio_pages_path
    end
  end

end
