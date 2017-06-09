module BtcExchangeInfo
  class Bitoex < BaseClient
    class << self
      def btc(type)
        response = download_ticker
        return nil if response.nil?
        response["#{type}"]
      end

      private

      def download_ticker
        response = RestClient.get "https://www.bitoex.com/api/v1/get_rate"
        data = JSON.parse(response.body)
      rescue
        nil
      end
    end
  end
end
