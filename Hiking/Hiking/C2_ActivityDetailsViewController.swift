//
//  C2_ActivityDetailsViewController.swift
//  Hiking
//
//  Created by Will Lam on 5/11/2020.
//

import UIKit

class C2_ActivityDetailsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    @IBOutlet weak var hikeRecordsTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        hikeRecordsTableView.delegate = self
        hikeRecordsTableView.dataSource = self
    }
    
    
    // MARK: - UITableViewDelegate
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 130.0
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return currentUser.userHikeRecord.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = hikeRecordsTableView.dequeueReusableCell(withIdentifier: "hikeRecordCellID", for: indexPath) as! C2_ActivityDetailsTableViewCell
        
        cell.routeImageView.contentMode = .scaleAspectFill
        switch indexPath.row {
        case 0:
            cell.routeImageView.image = UIImage(named: "RouteA")
        case 1:
            cell.routeImageView.image = UIImage(named: "RouteB")
        case 2:
            cell.routeImageView.image = UIImage(named: "RouteC")
        case 3:
            cell.routeImageView.image = UIImage(named: "RouteD")
        case 4:
            cell.routeImageView.image = UIImage(named: "RouteE")
        case 5:
            cell.routeImageView.image = UIImage(named: "RouteF")
        case 6:
            cell.routeImageView.image = UIImage(named: "RouteG")
        case 7:
            cell.routeImageView.image = UIImage(named: "RouteH")
        case 8:
            cell.routeImageView.image = UIImage(named: "RouteI")
        case 9:
            cell.routeImageView.image = UIImage(named: "RouteJ")
        default:
            cell.routeImageView.image = UIImage(systemName: "map")
        }
        let dF = DateFormatter()
        dF.dateFormat = "d MMM yyyy"
        cell.dateLabel.text = dF.string(from: currentUser.userHikeRecord[indexPath.row].recordedDate)
        cell.titleLabel.text = currentUser.userHikeRecord[indexPath.row].recordedRouteName
        cell.distanceLabel.text = String(format: "%.2f", currentUser.userHikeRecord[indexPath.row].recordedDistance) + " km"
        cell.timeLabel.text = String(format: "%.2f", currentUser.userHikeRecord[indexPath.row].recordedTime) + " hr"
        cell.paceLabel.text = String(format: "%.2f", currentUser.userHikeRecord[indexPath.row].recordedAveragePace) + " km/hr"
        
        return cell
    }
    
    
    // MARK: - Actions
    
    @IBAction func pressedFilterButton(_ sender: UIButton) {
        self.hikeRecordsTableView.reloadData()
    }
    
    @IBAction func pressedMapButton(_ sender: UIButton) {
    }
    
    
    // MARK: - Navigations
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showHikeRecord" {
            let target = segue.destination as! C2_2_ActivityDetailsHikeRecordViewController
            if let selectedRow = hikeRecordsTableView.indexPathForSelectedRow {
                target.title = currentUser.userHikeRecord[selectedRow.row].recordedRouteName
                target.currentHikeRecord = currentUser.userHikeRecord[selectedRow.row]
            }
        }
    }

}
