require 'passmakr'

module Oldskool
  class PasswordHandler
    include Utils

    def initialize(params, keyword, config)
      @params = params
      @keyword = keyword
      @config = config
      self
    end

    def handle_request(keyword, query)
      len = Integer(query) rescue 8

      pw = Passmakr.new(:phonemic, len)

      {:template => plugin_template(:password, __FILE__), :pw => pw}
    end
  end
end
