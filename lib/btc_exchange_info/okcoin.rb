module BtcExchangeInfo
  class Okcoin < BaseClient
    class << self
      def btc(type)
        response = download_ticker
        return nil if response.nil?
        response["ticker"]["#{type}"]
      end

      private

      def download_ticker
        response = RestClient.get "https://www.okcoin.cn/api/v1/ticker.do?symbol=btc_usd"
        data = JSON.parse(response.body)
      rescue
        nil
      end
    end
  end
end
