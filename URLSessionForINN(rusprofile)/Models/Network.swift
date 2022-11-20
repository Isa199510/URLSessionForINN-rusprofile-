//
//  Network.swift
//  URLSessionForINN(rusprofile)
//
//  Created by Иса on 20.11.2022.
//

enum Link: String {
    case urlOne = "https://api.genderize.io/?name=scott"
}



struct INN: Decodable {
    let ips: [IndPr]
}

struct IndPr: Decodable {
    let name: String
    let sex: Sex
    let ogrnip: String
    let inn: String
    let region_name: String
    let main_okved_id: String
    let okved_descr: String
    let reg_date: String
}

enum Sex: Int, Decodable {
    case man = 1
    case woman = 2
}
