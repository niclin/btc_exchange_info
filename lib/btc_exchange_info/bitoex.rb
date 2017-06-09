module BtcExchangeInfo
  class Bitoex < BaseClient
    class << self
      def btc(type)
        response = download_ticker
        return nil if response.nil?
        response["#{type}"].to_f
      end

      def url
        "https://www.bitoex.com"
      end

      private

      def download_ticker
        response = RestClient.get "#{url}/api/v1/get_rate"
        data = JSON.parse(response.body)
      rescue
        nil
      end
    end
  end
end
