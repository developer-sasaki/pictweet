class SearchTweetsService
  def self.search(search)
    if search != ""
      Tweet.where('text LIKE(?)', "%#{search}%")
    else
      Tweet.all
    end
    def search
      @tweets = SearchTweetsService.search(params[:keyword])
    end
  
  end
end