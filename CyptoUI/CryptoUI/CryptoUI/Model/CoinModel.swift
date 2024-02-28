//
//  CoinModel.swift
//  CryptoUI
//
//  Created by Quang Nguyen on 27/02/2024.
//

import Foundation

// CoinGecko API info
/*
 URL:
    https://api.coingecko.com/api/v3/coins/markets?vs_currency=usd&order=market_cap_desc&per_page=250&page=1&sparkline=true&price_change_percentage=24&locale=en
 
 JSON Response:
 {
     "id": "bitcoin",
     "symbol": "btc",
     "name": "Bitcoin",
     "image": "https://assets.coingecko.com/coins/images/1/large/bitcoin.png?1696501400",
     "current_price": 56508,
     "market_cap": 1105717713454,
     "market_cap_rank": 1,
     "fully_diluted_valuation": 1182356965931,
     "total_volume": 44098667988,
     "high_24h": 56701,
     "low_24h": 50927,
     "price_change_24h": 5062.56,
     "price_change_percentage_24h": 9.84065,
     "market_cap_change_24h": 95765062123,
     "market_cap_change_percentage_24h": 9.48213,
     "circulating_supply": 19638800,
     "total_supply": 21000000,
     "max_supply": 21000000,
     "ath": 69045,
     "ath_change_percentage": -18.45477,
     "ath_date": "2021-11-10T14:24:11.849Z",
     "atl": 67.81,
     "atl_change_percentage": 82931.3272,
     "atl_date": "2013-07-06T00:00:00.000Z",
     "roi": null,
     "last_updated": "2024-02-27T03:04:43.496Z",
     "sparkline_in_7d": {
       "price": [
         51783.882324492006,
         51651.718853830855,
         51661.79092647534,
         51764.4135924605,
         51583.62431716513,
         51783.28337977889,
         51882.15757428817,
         51935.6936354653,
         51822.731222097565,
         51783.692723358196,
         51815.44531135612,
         52097.338940997026,
         52310.61657763841,
         52173.57552261771,
         52814.46032658752,
         52013.92583628446,
         51706.22247516815,
         51412.204799432315,
         51281.19277020358,
         51505.40545199894,
         52088.2235020913,
         52075.96588399868,
         52080.27842993199,
         52286.72821905567,
         52286.79372554667,
         52184.205270030514,
         52092.500929603,
         52063.254143215534,
         51997.46017574118,
         51945.313901315254,
         51845.55229648391,
         51734.79738818786,
         51552.87702895199,
         51665.72628925628,
         51041.110815039974,
         51294.24505837726,
         50960.576983077146,
         51294.00784906533,
         51165.82288400753,
         50994.50898549725,
         51104.44922094181,
         51406.32523628744,
         51016.44742116322,
         50880.6254216154,
         51025.559109410344,
         50937.781498744946,
         51390.03137250098,
         51516.12152037645,
         51842.75676625642,
         51520.3852972089,
         51228.95497911139,
         51405.53552886497,
         51578.02241404908,
         51467.555604471025,
         51505.826048071925,
         51755.18247893277,
         51806.98126027872,
         51915.08839816274,
         51925.89817933047,
         51645.83916094753,
         51613.43253578913,
         51516.75932498234,
         51149.05588447203,
         51393.84969370881,
         51576.70292130172,
         51454.59679240083,
         51711.14580544951,
         51651.87986630683,
         51484.038829987636,
         51965.0332258993,
         51578.57739458951,
         51462.3712941115,
         51319.500125702674,
         51445.07757429647,
         51290.46384473216,
         51095.29306783685,
         51067.967072300395,
         51201.271638117025,
         51124.97620014934,
         51289.85201499646,
         50880.92367526176,
         50908.81488660626,
         50949.359440781955,
         51166.195179806724,
         51210.2940639519,
         50983.584307534344,
         51051.37119011336,
         51102.27794973614,
         50910.394626552355,
         51023.57720713857,
         51135.962066839966,
         51131.27428819613,
         51080.37683198738,
         51091.530003433276,
         50985.782654840594,
         50773.475118871436,
         50841.081094770896,
         50863.48685286495,
         50607.52920064971,
         50788.125508990335,
         50848.88547504514,
         50950.327041790515,
         51054.130061598386,
         50962.224264356795,
         51050.048117445396,
         50982.60912739779,
         51065.08904770135,
         51068.9235454728,
         51127.62804168001,
         51073.36046728882,
         51131.48175102287,
         51094.447775398425,
         51112.86772237167,
         51208.34658039908,
         51697.48554467913,
         51484.681536061114,
         51599.12248105399,
         51513.39102333645,
         51558.64778532889,
         51573.73667905135,
         51553.096712831146,
         51485.262018375855,
         51614.216980192345,
         51545.32115884375,
         51621.629465192906,
         51627.64128004587,
         51699.201967815585,
         51735.61018071985,
         51726.82888554329,
         51619.54399665533,
         51631.8944123664,
         51576.56470709675,
         51654.025665677225,
         51682.02969592259,
         51631.39988867448,
         51731.35612456198,
         51509.00951660319,
         51405.50649460264,
         51556.434366413734,
         51538.633942542714,
         51680.84842899583,
         51730.0957098725,
         51774.377396554664,
         51701.55732383541,
         51725.35393162457,
         51674.530312562376,
         51458.999296344286,
         51449.58877439659,
         51556.22697206768,
         51549.89709261979,
         51572.065623970644,
         51498.098290461494,
         51300.41485157674,
         51278.663078190846,
         50926.780715974346,
         51180.839719248645,
         51104.85484650301,
         51177.737528338555,
         51231.644578738815,
         51690.697700635785,
         52847.175807956504,
         53394.43288905663,
         53443.62062782177,
         53633.072547559466,
         54455.91125142581,
         54685.05166599562,
         54628.95571513321,
         54675.40695784579
       ]
     }
   }
*/  //option cmd <

struct CoinModel: Identifiable, Codable {
    let id, symbol, name: String
    let image: String
    let currentPrice: Double
    let marketCap, marketCapRank, fullyDilutedValuation: Double?
    let totalVolume, high24H, low24H: Double?
    let priceChange24H, priceChangePercentage24H: Double?
    let marketCapChange24H: Int?
    let marketCapChangePercentage24H: Double?
    let circulatingSupply, totalSupply, maxSupply, ath: Double?
    let athChangePercentage: Double?
    let athDate: String?
    let atl, atlChangePercentage: Double?
    let atlDate: String?
    let lastUpdated: String?
    let sparklineIn7D: SparklineIn7D?
    let currentHoldings: Double?
    
    enum codingKey: String, CodingKey {
        case id, symbol, name, image
        case currentPrice = "current_price"
        case marketCap = "market_cap"
        case marketCapRank = "market_cap_rank"
        case fullyDilutedValuation = "fully_diluted_valuation"
        case totalVolume = "total_volume"
        case high24H = "high_24h"
        case low24H = "low_24h"
        case priceChange24H = "price_change_24h"
        case priceChangePercentage24H = "price_change_percentage_24h"
        case marketCapChange24H = "market_cap_change_24h"
        case marketCapChangePercentage24H = "market_cap_change_percentage_24h"
        case circulatingSupply = "circulating_supply"
        case totalSupply = "total_supply"
        case maxSupply = "max_supply"
        case ath
        case athChangePercentage = "ath_change_percentage"
        case athDate = "ath_date"
        case alt
        case atlChangePercentage = "atl_change_percentage"
        case atlDate = "atl_date"
        case lastUpdated = "last_updated"
        case sparklineIn7D = "sparkline_in_7d"
        case currentHoldings
    }
    
    func updateHoldings(amount: Double) -> CoinModel {
        return CoinModel(id: id, symbol: symbol, name: name, image: image, currentPrice: currentPrice, marketCap: marketCap, marketCapRank: marketCapRank, fullyDilutedValuation: fullyDilutedValuation, totalVolume: totalVolume, high24H: high24H, low24H: low24H, priceChange24H: priceChange24H, priceChangePercentage24H: priceChangePercentage24H, marketCapChange24H: marketCapChange24H, marketCapChangePercentage24H: marketCapChangePercentage24H, circulatingSupply: circulatingSupply, totalSupply: totalSupply, maxSupply: maxSupply, ath: ath, athChangePercentage: athChangePercentage, athDate: athDate, atl: atl, atlChangePercentage: atlChangePercentage, atlDate: atlDate, lastUpdated: lastUpdated, sparklineIn7D: sparklineIn7D, currentHoldings:amount)
    }
    
    var currentHoldingsValues: Double {
        return (currentHoldings ?? 0) * currentPrice
    }
    
    var rank: Int {
        return Int(marketCapRank ?? 0)
    }
}

struct SparklineIn7D: Codable {
    let price: [Double]?
}
