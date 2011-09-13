class PagesController < ApplicationController

  before_filter :get_photosets

  def gallery
  end

  def about
  end

  def contact
  end

  def home
  end

  private

  def get_photosets
    flickr = Flickr.new('05ad56341ed719ab0c1d65aca564c863')
    @photosets = flickr.users('eneubauer').photosets.sort {|x,y| x.title <=> y.title }
  end

end
