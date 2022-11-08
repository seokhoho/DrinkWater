//
//  AlertListViewController.swift
//  Drink
//
//

import UIKit

class AlertListViewController: UITableViewController {
    
    var alertList: [Alert] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let nibName = UINib(nibName: "AlertListCell", bundle: nil)
        tableView.register(nibName, forCellReuseIdentifier: "AlertListCell")
    }
    
    @IBAction func addAlertButtonAction(_ sender: UIBarButtonItem) {
    }
    
}


//UITableView Datasource, Delegate
extension AlertListViewController {
    
    //row의 개수를 정하기
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return alertList.count //row의 개수는 알람의 개수
    }
    
    //섹션을 나누어 헤더를 표현
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        switch section {
        case 0:
            return "물 마실 시간"
        default:
            return nil
        }
    }
    
    
    //cell을 선언, cell에 값 넣기
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "AlertListCell", for: indexPath) as? AlertListCell else { return UITableViewCell() }
        
        cell.alertSwitch.isOn = alertList[indexPath.row].isOn
        cell.timeLabel.text = alertList[indexPath.row].time
        cell.meridiemLabel.text = alertList[indexPath.row].meridiem
        
        return cell
    }
    
    //cell의 높이 설정
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
    
    //cell삭제
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    override func tableView(_ tableview: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        switch editingStyle {
        case .delete:
            //notification 삭제 구현
            return
        return
        default:
            break
        }
    }
    
}
