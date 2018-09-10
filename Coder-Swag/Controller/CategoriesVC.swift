//
//  ViewController.swift
//  Coder-Swag
//
//  Created by Myke Phillips on 07/09/2018.
//  Copyright © 2018 Myke Phillips. All rights reserved.
//

import UIKit

class CategoriesVC: UIViewController, UITableViewDelegate, UITableViewDataSource {



    @IBOutlet weak var categoryTableView: UITableView!
    
    override func viewDidLoad() {


        super.viewDidLoad()


    }


    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DataService.instance.getCategories().count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        if let cell = tableView.dequeueReusableCell(withIdentifier: "CategoryCell") as? CategoryCell {

            let category = DataService.instance.getCategories()[indexPath.row]

            cell.updateViews(category: category)

            return cell
        } else {

            return CategoryCell()

        }

    }


    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let category = DataService.instance.getCategories()[indexPath.row]

        performSegue(withIdentifier: "ProductsVC", sender: category)
    }


    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let productVC = segue.destination as? ProductsVC {
            let barButton = UIBarButtonItem()
            barButton.title = ""
            navigationItem.backBarButtonItem = barButton
            assert(sender as? Category != nil)
            productVC.initProducts(category: sender as! Category)





        }
    }

}







