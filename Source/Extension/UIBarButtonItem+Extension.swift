//
//  UIBarButtonItem+Extension.swift
//  Demo
//
//  Created by Aziz Uysal on 5/10/18.
//  Copyright © 2018 PHAM BA THO. All rights reserved.
//

import UIKit

internal extension UIBarButtonItem {
  
  var titleWidth: CGFloat {
    get {
      let string = title ?? "cancel"
      return string.size(withAttributes: attributes(from: titleTextAttributes(for: .normal))).width
    }
  }
  
  private func attributes(from attributes: [String:Any]?) -> [NSAttributedStringKey:Any] {
    guard let attributes = attributes else { return [:] }
    return Dictionary(uniqueKeysWithValues: attributes.lazy.map { (NSAttributedStringKey($0.key), $0.value) }
    )
  }
}
