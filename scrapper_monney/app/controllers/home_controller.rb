class HomeController < ApplicationController

  def index
    @crypto = Crypto.new

  end

  def show
    if Crypto.find(1) == nil
    Scrapcrypto.new.save
    end

    @crypto = Crypto.find_by(crypto_params)
  end





private

def crypto_params
    params.require(:cryptos).permit(:name,:id,:price)
end

end
