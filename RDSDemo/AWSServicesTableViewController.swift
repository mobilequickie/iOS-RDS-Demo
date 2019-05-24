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
        Service(id: 1, shortName: "API Gateway", longName: "Amazon API Gateway",
                description: "", serviceRegionName: "", feedUrl: "", imageUrl: "api-gateway"),
        Service(id: 2, shortName: "Pinpoint", longName: "Amazon Pinpoint", description: "", serviceRegionName: "", feedUrl: "", imageUrl: "pinpoint"),
        Service(id: 3, shortName: "Amplify", longName: "AWS Amplify", description: "", serviceRegionName: "", feedUrl: "",imageUrl: "amplify"),
        Service(id: 4, shortName: "Device Farm", longName: "AWS Device Farm", description: "", serviceRegionName: "", feedUrl: "", imageUrl: "device-farm")
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
        cell.textLabel?.text = service.shortName
        cell.detailTextLabel?.text = service.longName
        cell.imageView?.image = UIImage(named: service.imageUrl)

        return cell
    }
}

struct Service {
    var id : Int
    var shortName : String
    var longName : String
    var description : String
    var serviceRegionName: String
    var feedUrl : String
    var imageUrl: String
}
