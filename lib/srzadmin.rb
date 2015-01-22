class SrzAdmin
  include HTTParty
  base_uri 'srzphadmin.herokuapp.com'

  def initialize
    @options = {query: {}}
  end

  def items
    self.class.get('/items', @options)
  end

  def categories
    self.class.get('/categories', @options)
  end
end