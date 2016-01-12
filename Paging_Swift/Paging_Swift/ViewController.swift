//
//  ViewController.swift
//  Paging_Swift
//
//  Created by Olga Dalton on 26/10/14.
//  Copyright (c) 2014 swiftiostutorials.com. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPageViewControllerDataSource {
    
    // MARK: - Variables
    private var pageViewController: UIPageViewController?
    
    // Initialize it right away here
    private let contentImages = ["nature_pic_1.png",
                                 "nature_pic_2.png",
                                 "nature_pic_3.png",
                                 "nature_pic_4.png"];

    // MARK: - View Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        //Basically call these two functions below in order to set everything up,
        //Remember that this is the first view controller that's instantiated
        createPageViewController()
        setupPageControl()
    }
    
    private func createPageViewController() {
        //First assign the pageViewController instantiated in the storyboard to be the one that we're using
        let pageController = self.storyboard!.instantiateViewControllerWithIdentifier("PageController") as UIPageViewController
        //Next say that the datasource of this pvc is this class
        pageController.dataSource = self
        
        //If the content image array has things in it
        if contentImages.count > 0 {
            //create a firstcontroller object which is a pageitemcontroller
            let firstController = getItemController(0)!
            
            //create an array called startingViewControllers, give it the pageitemcontroller for 0 index
            let startingViewControllers: NSArray = [firstController]
            //give the storyboards pagecontroller the startingViewControllers and specify some settings
            pageController.setViewControllers(startingViewControllers, direction: UIPageViewControllerNavigationDirection.Forward, animated: false, completion: nil)
        }
        //Set this classes pageViewController as the one in the storyboard that has been configured
        pageViewController = pageController
        //add a childViewController to this class in the form of the pageViewController
        addChildViewController(pageViewController!)
        //Add the coresponding pageViewControllers view as a subview to this class
        self.view.addSubview(pageViewController!.view)
        //Call the didmove to parent view controller function
        pageViewController!.didMoveToParentViewController(self)
    }

    private func setupPageControl() {
        let appearance = UIPageControl.appearance()
        appearance.pageIndicatorTintColor = UIColor.grayColor()
        appearance.currentPageIndicatorTintColor = UIColor.whiteColor()
        appearance.backgroundColor = UIColor.darkGrayColor()
    }
    
    // MARK: - UIPageViewControllerDataSource
    
    func pageViewController(pageViewController: UIPageViewController, viewControllerBeforeViewController viewController: UIViewController) -> UIViewController? {
        
        let itemController = viewController as PageItemController
        
        if itemController.itemIndex > 0 {
            return getItemController(itemController.itemIndex-1)
        }
        
        return nil
    }
    
    func pageViewController(pageViewController: UIPageViewController, viewControllerAfterViewController viewController: UIViewController) -> UIViewController? {
        
        let itemController = viewController as PageItemController
        
        if itemController.itemIndex+1 < contentImages.count {
            return getItemController(itemController.itemIndex+1)
        }
        
        return nil
    }
    
    private func getItemController(itemIndex: Int) -> PageItemController? {
        
        //if the int passed to this method is less than the count
        if itemIndex < contentImages.count {
            //create a pageItemController variable and set it to this storyboards PageItemController (a vc in the storyboard)
            let pageItemController = self.storyboard!.instantiateViewControllerWithIdentifier("ItemController") as PageItemController
            //Set the pageItemControllers itemIndex to be the one passed in (to basically set this item)
            pageItemController.itemIndex = itemIndex
            //Set the image name to be that of the image at its index spot
            pageItemController.imageName = contentImages[itemIndex]
            return pageItemController
        }
        
        return nil
    }
    
    // MARK: - Page Indicator
    
    func presentationCountForPageViewController(pageViewController: UIPageViewController) -> Int {
        return contentImages.count
    }
    
    func presentationIndexForPageViewController(pageViewController: UIPageViewController) -> Int {
        return 0
    }

}

