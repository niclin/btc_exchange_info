module BtcExchangeInfo
  class Btctrade < BaseClient
    class << self
      def btc(type)
        response = download_ticker
        return nil if response.nil?
        response["#{type}"]
      end

      private

      def download_ticker
        response = RestClient.get "https://api.btctrade.com/api/ticker?coin=btc"
        data = JSON.parse(response.body)
      rescue
        nil
      end
    end
  end
end
