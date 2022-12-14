//
//  HomeViewController.swift
//  Cricket
//
//  Created by Preetam G on 06/12/22.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var createTournament: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setUpView()
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    private func setUpView() {
        navigationController?.navigationBar.isHidden = true
        _ = self.createTournament.applyGradient(colours: [#colorLiteral(red: 1, green: 0.7294117647, blue: 0.5490196078, alpha: 1), #colorLiteral(red: 0.9960784314, green: 0.3607843137, blue: 0.4156862745, alpha: 1)], cornerRadius: CGFloat(4))
    }
    
    @IBAction func onClickBurgerMenu(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "MenuViewController") as? MenuViewController
        guard  let menuVc = vc else {
            return
        }
        navigationController?.pushViewController(menuVc, animated: true)
    }
    
    @IBAction func onClickCreateTournament(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "LoginViewController") as? LoginViewController
        guard  let loginVc = vc else {
            return
        }
        navigationController?.pushViewController(loginVc, animated: true)
    }
    
}

extension HomeViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as? HomeTableViewCell
        cell?.designCell()
        cell?.setValues(index: indexPath.row)
        return cell!
    }
    
    
}
