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
	
	/* Animating the cell with fading alpha while scrolling
	override func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
		// set initial state
		cell.alpha = 0
		// animate to target state
		UIView.animate(withDuration: 1.0) { cell.alpha = 1 }
	} */
	
	/* Animating the cell with rotation by CATransform3DMakeRotation
	override func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
		let rotationAngleInRadians = 90.0 * CGFloat.pi / 180
		let rotationTransform = CATransform3DMakeRotation(rotationAngleInRadians, 0, 0, 1)
		cell.layer.transform = rotationTransform
		UIView.animate(withDuration: 1.0) { cell.layer.transform = CATransform3DIdentity }
	} */
	
	// Animating the cell with flyin by CATransform3DTranslate
	override func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
		let flyingTransform = CATransform3DTranslate(CATransform3DIdentity, -500, 0, 0)
		cell.layer.transform = flyingTransform
		UIView.animate(withDuration: 1.0) { cell.layer.transform = CATransform3DIdentity }
	}
}
