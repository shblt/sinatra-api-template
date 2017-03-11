module ApiApp
  module Api
    def self.registered(app)
      app.register Sinatra::Namespace
      app.namespace '/api/v1' do

        get '/status' do
          status = {:ok => true}
          json_out status
        end

      end
    end
  end
  Sinatra.register Api
end
