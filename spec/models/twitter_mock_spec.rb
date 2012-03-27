require 'spec_helper'

describe TwitterMock do

  it "allows for stubbing a search response" do
    TwitterMock.stub_search_response("term", [{"text" => "my great tweet"}])
    results = TwitterMock.search("term")
    results.first.text.should == "my great tweet"
  end

end

