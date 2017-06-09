module BtcExchangeInfo
  class Maicoin < BaseClient
    class << self
      def btc(type)
        response = download_ticker
        return nil if response.nil?
        response["#{type}_price"].to_f
      end

      def url
        "https://api.maicoin.com"
      end

      private

      def download_ticker
        response = RestClient.get "#{url}/v1/prices/twd"
        data = JSON.parse(response.body)
      rescue
        nil
      end
    end
  end
end
