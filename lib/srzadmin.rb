class SrzAdmin
  include HTTParty
  base_uri 'http://localhost:8000'
  EXCEPTIONS = [HTTParty::Error, SocketError, StandardError]

  def initialize
    @options = {query: {}}
  end

  def items
    begin
      self.class.get('/items', @options)
    rescue *EXCEPTIONS
      false
    end
  end

  def categories
    self.class.get('/categories', @options)
  end
end