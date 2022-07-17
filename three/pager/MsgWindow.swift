//
//  MsgWindow.swift
//  pager
//
//  Created by Jz D on 2022/7/17.
//

import UIKit

class MsgView: UIView {

    init() {
        let originX: CGFloat = 50
        let width = UIScreen.main.bounds.width - originX * 2
        super.init(frame: CGRect(x: originX, y: 100, width: width, height: 150))
        clipsToBounds = true
        layer.cornerRadius = 8
        backgroundColor = UIColor.cyan
        layer.zPosition = CGFloat.infinity
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
        let scenes = UIApplication.shared.connectedScenes
        for sce in scenes{
            if let windowScene = sce as? UIWindowScene, windowScene.activationState == .foregroundActive , let win = windowScene.windows.first{
                isHidden = false
                win.addSubview(self)
                return
            }
        }
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    

}
