//
//  ViewController.swift
//  013-tableView
//
//  Created by Weibin LUO on 10/3/16.
//  Copyright © 2016 Weibin LUO. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        setupUI()
    }
    
    // MARK: - UITableViewDataSource
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellId", for: indexPath)
        
        cell.textLabel?.text = "\(indexPath.row)"
        
        return cell
    }
    

    func setupUI() {
        // 1. 创建表格
        let tv = UITableView(frame: view.bounds, style: .plain)
        
        // 2. 添加到视图
        view.addSubview(tv)
        
        // 3. 注册可重用 cell
        tv.register(UITableView.self, forCellReuseIdentifier: "cellId")
        
        // 4. 设置数据源
        tv.dataSource = self
        
    }

}

