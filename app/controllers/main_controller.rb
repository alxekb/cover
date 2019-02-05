class MainController < ApplicationController
  def index
    @offers = Offer.order("RANDOM()").limit(3)
    @bloggers = Blogger.order("RANDOM()").limit(4)
    @solutions = Solution.order("RANDOM()").limit(6)
  end
end
