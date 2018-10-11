require 'spec_helper'

describe Admin::CategoriesController do 
    describe "new_edit with id" do 
        it "Save category should redirect to new" do 
            get :new_or_edit
            assigns(:categories).should_not == nil 
        end
    end
    
    describe "Does article have child" do 
        it "Article should not have child" do 
            article = Article.create
            has_child = article.has_child?
            has_child.should == false
        end
    end
end