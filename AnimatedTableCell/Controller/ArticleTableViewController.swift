//
//  ArticleTableViewController.swift
//  AnimatedTableCell
//
//  Created by Chris Huang on 25/09/2017.
//  Copyright © 2017 Chris Huang. All rights reserved.
//

import UIKit

class ArticleTableViewController: UITableViewController {

	// MARK: Model
	private let postTitles = ["Use Background Transfer Service To Download File in Background",
	                  "Face Detection in iOS Using Core Image",
	                  "Building a Speech-to-Text App Using Speech Framework in iOS 10",
	                  "Building Your First Web App in Swift Using Vapor",
	                  "Creating Gradient Colors Using CAGradientLayer",
	                  "A Beginner's Guide to CALayer"]
	private let postImages = ["imessage-sticker-pack", "face-detection-featured", "speech-kit-featured",
	                          "vapor-web-framework", "cagradientlayer-demo", "calayer-featured"]

	override func viewDidLoad() {
		super.viewDidLoad()
		
		tableView.estimatedRowHeight = 258
		tableView.rowHeight = UITableViewAutomaticDimension
	}
	
	// MARK: UITableViewDataSource and UITableViewDelegate
	override func numberOfSections(in tableView: UITableView) -> Int { return 1 }
	override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return postTitles.count
	}
	override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
		let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! ArticleCell
		cell.titleLabel.text = postTitles[indexPath.row]
		cell.postImageView.image = UIImage(named: postImages[indexPath.row])
		return cell
	}
}
