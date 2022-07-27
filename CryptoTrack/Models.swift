//
//  Models.swift
//  CryptoTrack
//
//  Created by Train2 on 29/4/2565 BE.
//

import Foundation

//AIP Response
struct Crypto: Codable {
    let asset_id: String
    let name: String?
    let price_usd: Float?
    let id_icon: String?
}

//"asset_id": "BTC",
//    "name": "Bitcoin",
//    "type_is_crypto": 1,
//    "data_quote_start": "2014-02-24T17:43:05.0000000Z",
//    "data_quote_end": "2022-04-29T02:12:50.5566159Z",
//    "data_orderbook_start": "2014-02-24T17:43:05.0000000Z",
//    "data_orderbook_end": "2020-08-05T14:38:38.3413202Z",
//    "data_trade_start": "2010-07-17T23:09:17.0000000Z",
//    "data_trade_end": "2022-04-29T02:13:31.3020000Z",
//    "data_symbols_count": 89299,
//    "volume_1hrs_usd": 1025454537044.33,
//    "volume_1day_usd": 61139356772886.49,
//    "volume_1mth_usd": 2171749739461160.45,
//    "price_usd": 39662.431398145474615689104755,
//    "id_icon": "4caf2b16-a017-4e26-a348-2cea69c34cba",
//    "data_start": "2010-07-17",
//    "data_end": "2022-04-29"
