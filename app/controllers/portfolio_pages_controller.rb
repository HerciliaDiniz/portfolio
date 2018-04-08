class PortfolioPagesController < ApplicationController

  def index 
    @portfolio_items = PortfolioPage.all
  end

end
