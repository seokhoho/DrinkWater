//
//  Alert.swift
//  Drink
//


import Foundation

struct Alert: Codable { //왜 코더블
    var id: String = UUID().uuidString //id는 고유한 값으로
    let date: Date //시간 값
    let isOn: Bool //켜져있는지 확인
    
    var time: String { //date값을 받으면
        let timeFormatter = DateFormatter()
        timeFormatter.dateFormat = "hh:mm" //시간과 분
        return timeFormatter.string(from: date)
    }
    
    var meridiem: String {
        let meridiemFormatter = DateFormatter()
        meridiemFormatter.dateFormat = "a" //오전 오후를 설명하는 문자열
        meridiemFormatter.locale = Locale(identifier: "ko")
        return meridiemFormatter.string(from: date)
    }
}
