//
//  MsgWindow.swift
//  pager
//
//  Created by Jz D on 2022/7/17.
//

import UIKit

class MsgView: UIView {
    
    let rect : CGRect = {
        let originX: CGFloat = 50
        let width = UIScreen.main.bounds.width - originX * 2
        return CGRect(x: originX, y: 100, width: width, height: 400)
    }()
    
    let btnRect = CGRect(x: 10, y: 10, width: 50, height: 50)

    init() {
        
        super.init(frame: rect)
        clipsToBounds = true
        layer.cornerRadius = 8
        backgroundColor = UIColor.clear
        layer.zPosition = CGFloat.infinity
        isHidden = true
        
        let bg = UIView(frame: CGRect(origin: .zero, size: rect.size))
        bg.backgroundColor = UIColor.cyan
        bg.alpha = 0.5
        addSubview(bg)
        
        
        let btn = UIButton(frame: btnRect)
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
    
    
    override func point(inside point: CGPoint, with event: UIEvent?) -> Bool {
        return btnRect.contains(point)
    }

}
