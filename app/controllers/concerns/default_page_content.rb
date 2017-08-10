module DefaultPageContent
  extend ActiveSupport::Concern
  
  included do
    before_action :set_page_defaults
  end
  
  def set_page_defaults
    @page_title = "AlphaPortfolio"
    
    @seo_keywords = "Faisal Hassan portfolio, Posh Hunt CTO, Software Engineer,
                     Ruby on Rails"
  end
  
end