//
//  ViewController.swift
//  pager
//
//  Created by Jz D on 2022/7/17.
//

import UIKit



class ViewController: UIPageViewController {

    lazy var left = ContentCtrl(isLeft: true)
    lazy var right = ContentCtrl(isLeft: false)
    lazy var greenView = UIView(frame: CGRect(x: 125, y: 250, width: 100, height: 100))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        dataSource = self
        setViewControllers([left], direction: UIPageViewController.NavigationDirection.forward, animated: false, completion: nil)
        
        greenView.backgroundColor = UIColor.green
        view.addSubview(greenView)
        
        
    }


}



extension ViewController: UIPageViewControllerDataSource{
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController?{
        if viewController == right{
            return left
        }
        else{
            return nil
        }
    }


    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController?{
        if viewController == left{
            return right
        }
        else{
            return nil
        }
    }
}
