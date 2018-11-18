class PersonalSite
  def self.call(env)
    ['200', {'Content-Type' => 'text/html'}, ['Welcome!']]
    #this array includes the HTTP response status code, Http response
    #headers and http body
  end
end
