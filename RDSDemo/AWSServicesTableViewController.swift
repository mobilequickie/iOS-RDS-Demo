//
//  AWSServicesTableViewController.swift
//  RDSDemo
//
//  Created by Hills, Dennis on 5/17/19.
//  Copyright © 2019 Hills, Dennis. All rights reserved.
//
import UIKit

class AWSServicesTableViewController: UITableViewController {

    // Sample data
    var awsServices = [
        Service(id: 1, name: "API Gateway", officialName: "Amazon API Gateway", image: "Amazon-API-Gateway"),
        Service(id: 2, name: "Pinpoint", officialName: "Amazon Pinpoint", image: "Amazon-Pinpoint"),
        Service(id: 3, name: "Amplify", officialName: "AWS Amplify", image: "AWS-Amplify"),
        Service(id: 4, name: "Device Farm", officialName: "AWS Device Farm", image: "AWS-Device-Farm")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return awsServices.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "LabelCell", for: indexPath)

        let service = awsServices[indexPath.row]
        cell.textLabel?.text = service.name
        cell.detailTextLabel?.text = service.officialName
        cell.imageView?.image = UIImage(named: service.image)

        return cell
    }
}

struct Service {
    var id : Int
    var name : String
    var officialName : String
    var image : String
}
