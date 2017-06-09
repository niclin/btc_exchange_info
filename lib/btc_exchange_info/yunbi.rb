module BtcExchangeInfo
  class Yunbi < BaseClient
    class << self
      def btc(type)
        response = download_ticker
        return nil if response.nil?
        response["btccny"]["ticker"]["#{type}"]
      end

      private

      def download_ticker
        response_yunbi = RestClient.get "https://yunbi.com/api/v2/tickers"
        data_yunbi = JSON.parse(response_yunbi.body)
      rescue
        nil
      end
    end
  end
end
