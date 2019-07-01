//
//  ViewController.swift
//  ios-test-app
//
//  Created by Nikhil-Mishra on 26/06/19.
//  Copyright © 2019 Nikhil-Mishra. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    private let cellReuseID = "cellID"
    
    let tableView = UITableView(frame: .zero)
    
    struct Restaurants {
        var title: String
        var subTitle: String
        var image : UIImage?
    }
    
    var dataArr: [Restaurants] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        //Data Populate:
        dataArr.append(Restaurants(title: "KFC", subTitle: "Chicken Buckets, Wings", image: UIImage(named: "phone")))
        dataArr.append(Restaurants(title: "Burger king", subTitle: "Burger, Fast Food", image: UIImage(named: "phone-icon")))
        dataArr.append(Restaurants(title: "Manhattan Bar", subTitle: "Brewery, Wine", image: UIImage(named: "old-phone")))
        dataArr.append(Restaurants(title: "Subway", subTitle: "Healthy Food, customize", image: UIImage(named: "chineese-app")))
        dataArr.append(Restaurants(title: "Nik Bakers", subTitle: "Beautiful Bakery", image: UIImage(named: "call-end")))
        
        tableView.dataSource = self
        tableView.delegate = self
        createTableView()
        
        tableView.register(TableViewCell.self, forCellReuseIdentifier: cellReuseID)
        
        
        
    }
    
    func createTableView() {
        view.addSubview(tableView)
        tableView.set(.fillSuperView(view, 12))
    }
    
    fileprivate func createViews() {
        let paddingConstant: CGFloat = 8
        
        let redView = UIView()
        view.addSubview(redView)
        redView.backgroundColor = .red
        redView.set(.top(view, 6*paddingConstant),
                    .leading(view, paddingConstant),
                    .width(140),
                    .height(140))
        
        let greenView = UIView()
        greenView.backgroundColor = .green
        view.addSubview(greenView)
        greenView.set(.top(redView),
                      .after(redView, paddingConstant),
                      .trailing(view, paddingConstant),
                      .height(140))
        
        let blueView = UIView()
        blueView.backgroundColor = .blue
        view.addSubview(blueView)
        blueView.set(.below(greenView, paddingConstant),
                     .trailing(view, paddingConstant),
                     .height(120),
                     .width(120))
        
        let yellowView = UIView()
        yellowView.backgroundColor = .yellow
        view.addSubview(yellowView)
        yellowView.set(.top(blueView),
                       .before(blueView, paddingConstant),
                       .leading(view, paddingConstant),
                       .height(120))
        
        let orangeView = UIView()
        orangeView.backgroundColor = .orange
        view.addSubview(orangeView)
        orangeView.set(.below(blueView, paddingConstant),
                       .leading(view, paddingConstant),
                       .trailing(view, paddingConstant),
                       .height(140))
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataArr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellReuseID, for: indexPath) as! TableViewCell
        cell.setData(titleText: dataArr[indexPath.row].title, subTitleText: dataArr[indexPath.row].subTitle, image: dataArr[indexPath.row].image ?? UIImage())
        return cell
    }
}


/*
 Study Structs and populate the list according to that
 
 Populate Images
 */
