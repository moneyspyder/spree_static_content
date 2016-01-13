class Spree::Admin::PagesController < Spree::Admin::ResourceController

  def new
    @page.render_layout_as_partial = true
  end

  private

  def location_after_save
    url_for([:edit, :admin, @page])
  end
end
