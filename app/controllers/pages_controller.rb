class PagesController < ApplicationController
  def gallery
    flickr = Flickr.new('05ad56341ed719ab0c1d65aca564c863')
    @photosets = flickr.users('eneubauer').photosets
  end

  def about
  end

  def contact
  end

  def home
  end

end
