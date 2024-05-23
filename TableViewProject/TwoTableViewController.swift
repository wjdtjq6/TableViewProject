//
//  TwoTableViewController.swift
//  TableViewProject
//
//  Created by t2023-m0032 on 5/23/24.
//

import UIKit

class TwoTableViewController: UITableViewController {
    let list = [["공지사항", "실험실", "버전 정보"], ["개인/보안", "알림", "채팅" ,"멀티프로필"], ["고객센터/도움말"]]
    @IBOutlet var titleLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        titleLabel.text = "설정"
        titleLabel.font = .boldSystemFont(ofSize: 20)
    }

    //섹션의 개수
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    
    //섹션 Header
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 0 {
            return "전체 설정"
        }
        else if section == 1 {
            return "개인 설정"
        }
        else {
            return "기타"
        }
        
    }
    
    //셀의 개수
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return list[0].count
        }
        else if section == 1 {
            return list[1].count
        } else {
            return list[2].count
        }
    }
    
    //셀의 높이
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 40
    }
    
    //셀의 디자인 및 데이터 처리
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let cell1 = tableView.dequeueReusableCell(withIdentifier: "Cell1")!
        let cell2 = tableView.dequeueReusableCell(withIdentifier: "Cell2")!
        let cell3 = tableView.dequeueReusableCell(withIdentifier: "Cell3")!
        let cells: [UITableViewCell] = [cell1,cell2,cell3]
        
        for i in 0...list[0].count-1 {
            cells[i].textLabel!.text = list[indexPath.section][indexPath.row]
            cells[i].textLabel!.font = UIFont.systemFont(ofSize: 12)
            return cells[i]
        }
        return cell1
        
//        if indexPath.section == 0 {
//            cell1.textLabel!.text = list[indexPath.section][indexPath.row]
//            cell1.textLabel!.font = UIFont.systemFont(ofSize: 12)
//            return cell1
//        }
//        else if indexPath.section == 1 {
//            cell2.textLabel!.text = list[indexPath.section][indexPath.row]
//            cell2.textLabel!.font = UIFont.systemFont(ofSize: 12)
//            return cell2
//        }
//        else {
//            cell3.textLabel!.text = list[indexPath.section][indexPath.row]
//            cell3.textLabel!.font = UIFont.systemFont(ofSize: 12)
//            return cell3
//        }
    }
}

