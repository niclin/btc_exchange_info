module BtcExchangeInfo
  class Btctrade < BaseClient
    class << self
      def btc(type)
        response = download_ticker
        return nil if response.nil?
        response["#{type}"].to_f
      end

      def url
        "https://api.btctrade.com"
      end

      private

      def download_ticker
        response = RestClient.get "#{url}/api/ticker?coin=btc"
        data = JSON.parse(response.body)
      rescue
        nil
      end
    end
  end
end
