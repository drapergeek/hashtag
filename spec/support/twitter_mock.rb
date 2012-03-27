class TwitterMock

  def self.stub_search_response(search, results)
    @results = results.map do |result|
      Twitter::Status.new(result)
    end
  end

  def self.search(search_term)
    @results
  end

end

