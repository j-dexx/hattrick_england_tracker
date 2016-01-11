module Hattruby
  module API
    def teams
      perform_request({ file: 'teamdetails', version: 3.2 })
    end

    private

    def perform_request(params = {})
      Hattruby::Request.new(self, params).perform
    end
  end
end
