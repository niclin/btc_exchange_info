module BtcExchangeInfo
  class Okcoin < BaseClient
    class << self
      def btc(type)
        response = download_ticker
        return nil if response.nil?
        response["ticker"]["#{type}"]
      end

      def url
        "https://www.okcoin.cn"
      end

      private

      def download_ticker
        response = RestClient.get "#{url}/api/v1/ticker.do?symbol=btc_usd"
        data = JSON.parse(response.body)
      rescue
        nil
      end
    end
  end
end
