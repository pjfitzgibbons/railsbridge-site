require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  
  {:css_test => 'CSS Test',
   :mission => 'The RailsBridge Mission',
   :help => 'Get Involved',
   :about => 'About RailsBridge',
   :sponsors => "RailBridge's Sponsors"}.each do | page, page_title |
    context "on GET to :#{page.to_s}" do
      setup do
        get page
      end
    
      should_assign_to(:page_title) { page_title }
      should_respond_with :success
      should_not_set_the_flash
      should_render_template page
    end
  end
  
  context "on GET to :home" do
    setup do
      @the_project = Project.generate!
      Project.stubs(:all).returns([@the_project] * 6)
      @the_news_item = NewsItem.generate!
      NewsItem.stubs(:all).returns([@the_news_item])
      get :home
    end
    
    should_assign_to(:projects) { [@the_project] * 6 }
    should_assign_to(:news_items) { [@the_news_item] }
    should_assign_to(:page_title) { "RailsBridge" }
    should_respond_with :success
    should_not_set_the_flash
    should_render_template :home
  end
  
  context "on GET to :about" do
    setup do
      @the_document = Document.generate!
      Document.stubs(:all).returns([@the_document])
      get :about
    end
    
    should_assign_to(:documents) { [@the_document] }
  end
  
end
