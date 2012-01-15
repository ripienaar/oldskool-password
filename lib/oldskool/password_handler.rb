require 'passmakr'

module Oldskool
  class PasswordHandler
    def initialize(params, keyword, config)
      @params = params
      @keyword = keyword
      @config = config
      self
    end

    def plugin_template(template)
      File.read(File.expand_path("../../../views/#{template}.erb", __FILE__))
    end

    def handle_request(keyword, query)
      len = Integer(query) rescue 8

      pw = Passmakr.new(:phonemic, len)

      {:template => plugin_template(:password), :pw => pw}
    end
  end
end
