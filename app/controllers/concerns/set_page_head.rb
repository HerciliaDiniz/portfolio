module SetPageHead
extend ActiveSupport::Concern

  included do
    before_action :set_page_head
  end

  def set_page_head
    @page_title = "HD Portfolio"
    @seo_keywords = "Hercilia Diniz Portfolio"
  end

end
