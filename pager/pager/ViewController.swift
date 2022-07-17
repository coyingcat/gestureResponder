//
//  ViewController.swift
//  pager
//
//  Created by Jz D on 2022/7/17.
//

import UIKit



class ViewController: UIViewController {

    lazy var left = ContentCtrl(isLeft: true)
    lazy var right = ContentCtrl(isLeft: false)
    lazy var greenView = UIView(frame: CGRect(x: 125, y: 250, width: 100, height: 100))
    
    
    lazy var pagedController = UIPageViewController(transitionStyle: .scroll, navigationOrientation: UIPageViewController.NavigationOrientation.horizontal, options: [:])
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        addChild(pagedController)
        pagedController.view.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(pagedController.view)
        NSLayoutConstraint.activate([
            pagedController.view.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            pagedController.view.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            pagedController.view.topAnchor.constraint(equalTo: view.topAnchor),
            pagedController.view.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
        
        
        
        pagedController.dataSource = self
        pagedController.setViewControllers([left], direction: UIPageViewController.NavigationDirection.forward, animated: false, completion: nil)
        
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
