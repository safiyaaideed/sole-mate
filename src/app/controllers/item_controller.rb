class ItemController < ApplicationController
  def page
    @sneakers = Sneakers.all
  end
end
