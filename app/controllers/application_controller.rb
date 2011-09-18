class ApplicationController < ActionController::Base
  before_filter :get_photosets


  protect_from_forgery

  private

  def get_photosets
    flickr = Flickr.new('05ad56341ed719ab0c1d65aca564c863')
    @photosets = flickr.users('eneubauer').photosets.sort {|x,y| x.title <=> y.title }
  end

end
