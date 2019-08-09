//
//  ViewController.swift
//  TrashMapBeta
//
//  Created by Daniel Inderwies on 8/5/19.
//  Copyright © 2019 Daniel Inderwies. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController {

    
    
    let yesterday = Date(timeIntervalSinceNow: -24*60*60)
    
    var locations = [CLLocation]()
    
    
    var currentLocation = CLLocation.init()
    
    let locationManager: CLLocationManager = CLLocationManager()
    
    @IBOutlet weak var mapView: MKMapView!
    
    @IBOutlet weak var tableView: UITableView!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        locationManager.requestWhenInUseAuthorization()
        
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.distanceFilter = kCLDistanceFilterNone
        locationManager.startUpdatingLocation()
        
        
        
        tableView.delegate = self
        tableView.dataSource = self
        
        mapView.delegate = self
        
        mapView.showsUserLocation = true
        
        mapView.userTrackingMode = .follow

    }

    @IBAction func addLocation(_ sender: Any) {
        
        if let unwrappedLocation = self.mapView.userLocation.location {
            self.currentLocation = unwrappedLocation
            
            self.locations.append(self.currentLocation)
                print("currentLocation", locations)
                self.tableView.reloadData()
        }
      
        
    }
    
}




extension ViewController: UITableViewDataSource, UITableViewDelegate {
    
    
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.locations.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell.init(style: .default, reuseIdentifier: "protoType")
        
        let coordinat = self.locations[indexPath.row].coordinate
        
        
       cell.textLabel?.text = "la: \(String(coordinat.latitude)) la:  \(String(coordinat.longitude))"
        
        
        return cell
    }
    

}


extension ViewController: MKMapViewDelegate {
    
    
    
}
