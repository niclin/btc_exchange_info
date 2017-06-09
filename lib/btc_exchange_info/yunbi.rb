module BtcExchangeInfo
  class Yunbi < BaseClient
    class << self
      def btc(type)
        response = download_ticker
        return nil if response.nil?
        response["btccny"]["ticker"]["#{type}"].to_f
      end

      def url
        "https://yunbi.com"
      end

      private

      def download_ticker
        response = RestClient.get "#{url}/api/v2/tickers"
        data = JSON.parse(response.body)
      rescue
        nil
      end
    end
  end
end
