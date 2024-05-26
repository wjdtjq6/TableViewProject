//
//  ThirdTableViewController.swift
//  TableViewProject
//
//  Created by t2023-m0032 on 5/24/24.
//

/*
 TableView
    TalbieView's Header
    |
        Section's Header
        * Row
        * Row
    |   Section's Footer
    TableView's Footer
 
 */

import UIKit

class ThirdTableViewController: UITableViewController {
    
    @IBOutlet var titleLabel: UILabel!
    var list: [String] = ["Hi"]

    override func viewDidLoad() {
        super.viewDidLoad()
        titleLabel.text = "쇼핑"
        titleLabel.font = .boldSystemFont(ofSize: 20)
        tableView.sectionHeaderHeight = 70
            
    }
    //셀의 개수
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return list.count
    }
    //섹션의 개수
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    //헤더
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let view = UIView()
        view.backgroundColor = .systemGray6
        
        let textfield = UITextField()
        textfield.frame = CGRect(x: 11, y: 12, width:170, height: 18)
        textfield.placeholder = "무엇을 구매하실 건가요?"
        
        let button = UIButton(type: .system)
        button.setTitle("추가", for: .normal)
        button.setTitleColor(UIColor.black, for: .normal)
        button.backgroundColor = .systemGray5
        
        button.frame = CGRect(x: 303, y: 14, width: 62, height: 12)
        button.addTarget(self, action: #selector(showDetail), for: .touchUpInside)

        view.addSubview(textfield)
        view.addSubview(button)

        return view
    }
    @objc func showDetail() {
        //list.append(textfield.text)
        self.tableView.reloadData()
    }
    
    //셀의 디자인과 데이터
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "list")!
        
        cell.imageView?.image = UIImage(systemName: "checkmark.square")
        cell.imageView?.tintColor = .black
        
        let button = UIButton(type: .system)
        button.imageView?.image = UIImage(systemName: "checkmark.square.fill")
        //button.frame = CGRect(x: 303, y: 100, width: 62, height: 12)
        
        cell.backgroundColor = .systemGray6
        cell.textLabel?.text = list[indexPath.row]
        //cell.textLabel?.text = ""
        //tableView.reloadData()
        return cell
    }
}
//1.textfield.text를 불러와야함
//2.헤더 사이 여백
//3.셀 오른쪽 버튼
