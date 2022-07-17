//
//  ContentCtrl.swift
//  pager
//
//  Created by Jz D on 2022/7/17.
//

import UIKit


let one = """
一
 
　　人生是什么？
 
　　“不如意事常八九。”
 
　　人生中的确有很多不如意的事——明明已达到成功边缘的挫败，幸福多年只因为一件小事而离散的婚姻，长久奋斗只因为一点疏忽而造成的消沉。
 
　　这些事情常常令人恨不得一头撞死，因为这些事情都是无可奈何的。
 
　　无可奈何，岂非就是人生中最悲伤的悲伤。
 
　　就算你有八百匹五花马、七千件千金裘，都拿去换了美酒，这种无可奈何的悲伤，还是无法消去。
 
　　可是人生中无疑还是有很多值得珍惜的事：朋友间的一席长谈，内心深处的一点点共鸣，风尘中偶然逢得的知己，处在“世人皆欲杀”的境遇中，偶然有一两个人能“吾意独怜才”。
 
　　这些都是能使人从内心深处感觉到温暖的事，只要有一点点这种温暖的回忆，已足以令人度过老年寂寞的冬天。
"""




let two = """
二
 
　　宝剑有双锋。
 
　　人生中有很多事也都一样。
 
　　刺猬只有刺，没有皮毛，在寒冷时只有互相依偎取暖，但也经常会刺痛对方。
 
　　“我们靠在一起，虽然不冷了，可是会刺痛彼此;不靠在一起，雖然不痛，却会冷。”这是一种说法。
 
　　“我们靠在一起，虽然有点痛，却不冷了;不靠在一起，虽然有点冷，却不痛了。”这是另外一种说法。
 
　　人也像刺猬，有的悲观，有的乐观;有的只想到痛苦的一面，却忘了人生中毕竟还有欢乐。
 
　　我看电影，总喜欢快乐的结局;我看小说，总喜欢欢乐的结束。
 
　　我自己写作时也一样。
 
　　我总觉得，人生中不如意、不快乐的事已够多，不需要我们再去增加。
 
　　喜剧所表达的，也许永远不如悲剧那么深刻;欢乐的意境，也许永远没有悲伤那么高远。
 
　　可是我宁愿让别人觉得我俗一点，我宁可去歌颂欢乐，也不愿去描述悲伤。
 
　　不管怎么样，阳光普照着的大地，总比灯火阑珊处好。

"""




class ContentCtrl: UIViewController {

    
    
    init(isLeft lhs: Bool) {
        super.init(nibName: nil, bundle: nil)
        if lhs{
            label.textColor = UIColor.black
            label.text = one
        }
        else{
            label.textColor = UIColor.red
            label.text = two
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    lazy var label = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        label.numberOfLines = 0
        view.backgroundColor = UIColor.white
        view.isUserInteractionEnabled = true
        label.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(label)
        NSLayoutConstraint.activate([
            label.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            label.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            label.topAnchor.constraint(equalTo: view.topAnchor),
            label.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
        


    }
    

}
