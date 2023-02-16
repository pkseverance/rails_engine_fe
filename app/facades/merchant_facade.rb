class MerchantFacade
    def self.merchants
        merchants_json = MerchantService.get_merchants
        merchants_json[:data].map{|merchant_data| Merchant.new(merchant_data)}
    end

    def self.merchant(id)
        merchant_json = MerchantService.get_merchant(id)
        Merchant.new(merchant_json[:data])
    end
end