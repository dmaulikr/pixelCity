//
//  MapVC.swift
//  pixelCity
//
//  Created by everipedia_iMac on 8/20/17.
//  Copyright © 2017 Christian Deciga. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation


class MapVC: UIViewController {

    @IBOutlet weak var mapView: MKMapView!
    
    var locationManager = CLLocationManager()
    let authorizationStatus = CLLocationManager.authorizationStatus()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mapView.delegate = self
        locationManager.delegate = self
        configureLocationServices()
    }

    
    @IBAction func centerMapBtnWasPressed(_ sender: Any) {
    }
    

}


extension MapVC: MKMapViewDelegate {
    
    
    
    
    
}

extension MapVC: CLLocationManagerDelegate {
    func configureLocationServices() {
        //check to see if app is authorized to grab, if not then request
        
        if authorizationStatus == .notDetermined {
            locationManager.requestAlwaysAuthorization()
        } else {
            return
        }
        
        
        
        
    }
}
