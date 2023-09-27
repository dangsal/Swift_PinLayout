//
//  PinViewController.swift
//  Swift_PinLayout
//
//  Created by 이성호 on 2023/09/27.
//

import UIKit

import PinLayout

final class PinViewController: UIViewController {
    
    // MARK: - ui component
    
    private let titleLable: UILabel = {
        let label = UILabel()
        label.backgroundColor = .systemBlue
        return label
    }()
    private let label1: UILabel = {
        let label = UILabel()
        label.backgroundColor = .systemBlue
        return label
    }()
    private let label2: UILabel = {
        let label = UILabel()
        label.backgroundColor = .systemRed
        return label
    }()
    private let label3: UILabel = {
        let label = UILabel()
        label.backgroundColor = .systemYellow
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupLayout()
        self.configureUI()
    }
    
    private func setupLayout() {
        self.view.addSubview(self.titleLable)
        self.view.addSubview(self.label1)
        self.view.addSubview(self.label2)
        self.view.addSubview(self.label3)
//        self.titleLable.pin.top(10).bottom(10).left(10).right(10)
//        self.titleLable.pin.top(150).bottom(150).left(50).right(50)
//        self.titleLable.pin.top(20%).bottom(20%).left(10%).right(50%)
//        self.titleLable.pin.top(self.view.pin.safeArea.top).bottom(self.view.pin.safeArea.bottom).left(50).right(50)
//        self.titleLable.pin.left().right().vCenter().height(100)
//        self.titleLable.pin.top(20).bottom(20).hCenter().width(50)
//        self.titleLable.pin.all()
//        self.titleLable.pin.topLeft(10).bottomRight(10)
        
//        self.lable1.pin.topLeft().size(100)
//        lable1.pin.topLeft().size(100)
//        lable2.pin.top().after(of: lable1).size(100)
//        lable3.pin.left().below(of: lable1).width(200).height(100)
//        lable1.pin.topLeft().size(100)
//        lable2.pin.after(of: lable1, aligned: .center).size(50)
//        lable3.pin.below(of: lable1, aligned: .right).size(50)
        label1.pin.topLeft().width(100).height(100)
        label2.pin.topRight().width(100).height(100)
        label3.pin.after(of: label1).before(of: label2).height(100)
    }
    
    private func configureUI() {
        self.view.backgroundColor = .white
    }
}
