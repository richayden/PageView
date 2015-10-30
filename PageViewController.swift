//
//  PageViewController.swift
//  PageView
//
//  Created by Richard Hayden on 10/11/15.
//  Copyright © 2015 richayden. All rights reserved.
//

import UIKit

class PageViewController: UIPageViewController {

    func getApple() -> AppleViewController {
        return storyboard!.instantiateViewControllerWithIdentifier("AppleViewController") as! AppleViewController
    }
    
    func getBanana() -> BananaViewController {
        return storyboard!.instantiateViewControllerWithIdentifier("BananaViewController") as! BananaViewController
    }
    
    func getGrape() -> GrapeViewController {
        return storyboard!.instantiateViewControllerWithIdentifier("GrapeViewController") as! GrapeViewController
    }
    
    func getKiwi() -> KiwiViewController {
        return storyboard!.instantiateViewControllerWithIdentifier("KiwiViewController") as! KiwiViewController
    }
    
    override func viewDidLoad() {
        view.backgroundColor = .lightGrayColor()
        dataSource = self
        setViewControllers([getApple()], direction: .Forward, animated: false, completion: nil)
    }
    
}

extension PageViewController : UIPageViewControllerDataSource {
    
    func pageViewController(pageViewController: UIPageViewController, viewControllerBeforeViewController viewController: UIViewController) -> UIViewController? {
        if viewController.isKindOfClass(KiwiViewController) {
            let vc = getGrape()
            vc.grapeLabel.text = ""
            return vc
        } else if viewController.isKindOfClass(GrapeViewController) {
            return getBanana()
        } else if viewController.isKindOfClass(BananaViewController) {
            return getApple()
        } else {
            return nil
        }
    }
    
    func pageViewController(pageViewController: UIPageViewController, viewControllerAfterViewController viewController: UIViewController) -> UIViewController? {
        if viewController.isKindOfClass(AppleViewController) {
            return getBanana()
        } else if viewController.isKindOfClass(BananaViewController) {
            return getGrape()
        } else if viewController.isKindOfClass(GrapeViewController) {
            return getKiwi()
        } else {
            return nil
        }
    }
    
    func presentationCountForPageViewController(pageViewController: UIPageViewController) -> Int {
        return 4
    }
    
    func presentationIndexForPageViewController(pageViewController: UIPageViewController) -> Int {
        return 0
    }

}