module BtcExchangeInfo
  class Maicoin < BaseClient
    class << self
      def btc(type)
        response = download_ticker
        return nil if response.nil?
        response["#{type}_price"]
      end

      private

      def download_ticker
        response = RestClient.get "https://api.maicoin.com/v1/prices/twd"
        data = JSON.parse(response.body)
      rescue
        nil
      end
    end
  end
end
