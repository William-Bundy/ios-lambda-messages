//
//  AppearanceHelper.swift
//  Lambda Messages Theming
//
//  Created by William Bundy on 8/27/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import Foundation
import UIKit

enum Appearance
{
	static func hexToColor(_ color:UInt32) -> UIColor
	{
		let r = color >> 24
		let g = (color >> 16) & 0xFF
		let b = (color >> 8) & 0xFF
		let a = color & 0xFF;
		return UIColor(red:CGFloat(r) / 255.0,
					   green:CGFloat(g) / 255.0,
					   blue:CGFloat(b) / 255.0,
					   alpha:CGFloat(a)/255.0)
	}

	static var lred = hexToColor(0xd45750ff)
	static var bgGrey = hexToColor(0x2d2d2dFF)
	static func setupDarkAppearance()
	{
		UILabel.appearance().textColor = .white
		UIBarButtonItem.appearance().tintColor = lred
		UISegmentedControl.appearance().tintColor = lred
		UINavigationBar.appearance().barTintColor = Appearance.bgGrey
		let textAttributes = [NSAttributedStringKey.foregroundColor: UIColor.white]
		UINavigationBar.appearance().titleTextAttributes = textAttributes
		UINavigationBar.appearance().largeTitleTextAttributes = textAttributes
		UITableView.appearance().backgroundColor = bgGrey
		UITableViewCell.appearance().backgroundColor = bgGrey
		UITextField.appearance().keyboardAppearance = .dark
		UITextField.appearance().tintColor = lred
		UITextView.appearance().tintColor = lred
	}

	static func appFont(style:UIFontTextStyle=.caption1, pointSize:CGFloat=16.0) -> UIFont {
		let font = UIFont(name: "RM Typerighter medium", size: pointSize)!
		return UIFontMetrics(forTextStyle: style).scaledFont(for: font)
	}
}
