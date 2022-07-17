//
//  MsgWindow.swift
//  pager
//
//  Created by Jz D on 2022/7/17.
//

import UIKit

class MsgWindow: UIWindow {

    init() {
        let originX: CGFloat = 50
        let width = UIScreen.main.bounds.width - originX * 2
        super.init(frame: CGRect(x: originX, y: 100, width: width, height: 150))
        clipsToBounds = true
        layer.cornerRadius = 8
        backgroundColor = UIColor.cyan
        windowLevel = UIWindow.Level.statusBar + 100
        isHidden = true
        
        let btn = UIButton(frame: CGRect(x: 10, y: 10, width: 50, height: 50))
        btn.backgroundColor = UIColor.red
        btn.layer.cornerRadius = 8
        btn.backgroundColor = UIColor.white
        addSubview(btn)
        btn.addTarget(self, action: #selector(hide), for: .touchUpInside)
    }
    
    
    
    @objc func hide(){
        isHidden = true
    }
    
    
    
    func show(){
        if windowScene == nil, let scene = UIApplication.shared.connectedScenes.first as? UIWindowScene{
            windowScene = scene
        }
        isHidden = false
        
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    

}
