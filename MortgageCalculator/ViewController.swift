//
//  ViewController.swift
//  MortgageCalculator
//
//  Created by Dev on 27/09/2022.
//

import UIKit

class ViewController: UIViewController {

    var yposition = CGFloat()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(named: "backgroundColor")
        setupUI()
    }
    
    lazy var stack: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.alignment = .center
        stackView.distribution = .fill
        stackView.frame.origin.x = 0
        stackView.frame.origin.y = 0
        stackView.frame.size.width = UIScreen.main.bounds.width
        stackView.frame.size.height = UIScreen.main.bounds.height
        return stackView
    }()
    
    lazy var appTitle: UILabel = {
        let titleLabel = UILabel()
        titleLabel.text = "Mortgagae Calculator"
        titleLabel.textColor = UIColor(named: "textColor")
        titleLabel.frame.origin.x = 0
        titleLabel.frame.origin.y = yposition
        titleLabel.textAlignment = .center
        titleLabel.frame.size.width = UIScreen.main.bounds.width
        titleLabel.frame.size.height = CGFloat(40)
        titleLabel.font = UIFont.boldSystemFont(ofSize: 25.0)
        titleLabel.adjustsFontSizeToFitWidth = true
        titleLabel.minimumScaleFactor = 4
        return titleLabel
    }()
    
    lazy var purchasePriceLabel: UILabel = {
        let label = UILabel()
        label.text = "Purchase Price: "
        label.textColor = UIColor(named: "textColor")
        label.frame.origin.x = 20
        label.frame.origin.y = yposition
        label.textAlignment = .left
        label.frame.size.width = UIScreen.main.bounds.width / 2
        label.frame.size.height = CGFloat(40)
        label.font = UIFont.boldSystemFont(ofSize: 18.0)
        label.adjustsFontSizeToFitWidth = true
        label.minimumScaleFactor = 4
        return label
    }()
    
    lazy var downPaymentLabel: UILabel = {
        let label = UILabel()
        label.text = "Down Payment: "
        label.textColor = UIColor(named: "textColor")
        label.frame.origin.x = 20
        label.frame.origin.y = yposition
        label.textAlignment = .left
        label.frame.size.width = UIScreen.main.bounds.width / 2
        label.frame.size.height = CGFloat(40)
        label.font = UIFont.boldSystemFont(ofSize: 18.0)
        label.adjustsFontSizeToFitWidth = true
        label.minimumScaleFactor = 4
        return label
    }()
    
    lazy var repaymentLabel: UILabel = {
        let label = UILabel()
        label.text = "Repayment Time: "
        label.textColor = UIColor(named: "textColor")
        label.frame.origin.x = 20
        label.frame.origin.y = yposition
        label.textAlignment = .left
        label.frame.size.width = UIScreen.main.bounds.width / 2
        label.frame.size.height = CGFloat(40)
        label.font = UIFont.boldSystemFont(ofSize: 18.0)
        label.adjustsFontSizeToFitWidth = true
        label.minimumScaleFactor = 4
        return label
    }()
    
    lazy var interestLabel: UILabel = {
        let label = UILabel()
        label.text = "Interest Rate: "
        label.textColor = UIColor(named: "textColor")
        label.frame.origin.x = 20
        label.frame.origin.y = yposition
        label.textAlignment = .left
        label.frame.size.width = UIScreen.main.bounds.width / 2
        label.frame.size.height = CGFloat(40)
        label.font = UIFont.boldSystemFont(ofSize: 18.0)
        label.adjustsFontSizeToFitWidth = true
        label.minimumScaleFactor = 4
        return label
    }()
    
    lazy var loanLabel: UILabel = {
        let label = UILabel()
        label.text = "Loan Amount: "
        label.textColor = UIColor(named: "textColor")
        label.frame.origin.x = 20
        label.frame.origin.y = yposition
        label.textAlignment = .left
        label.frame.size.width = UIScreen.main.bounds.width / 2
        label.frame.size.height = CGFloat(40)
        label.font = UIFont.boldSystemFont(ofSize: 18.0)
        label.adjustsFontSizeToFitWidth = true
        label.minimumScaleFactor = 4
        return label
    }()
    
    lazy var estimateLabel: UILabel = {
        let label = UILabel()
        label.text = "Estimated pr Month: "
        label.textColor = UIColor(named: "textColor")
        label.frame.origin.x = 20
        label.frame.origin.y = yposition
        label.textAlignment = .left
        label.frame.size.width = UIScreen.main.bounds.width / 2
        label.frame.size.height = CGFloat(40)
        label.font = UIFont.boldSystemFont(ofSize: 18.0)
        label.adjustsFontSizeToFitWidth = true
        label.minimumScaleFactor = 4
        return label
    }()
    
    lazy var purchasePriceSelectedLabel: UILabel = {
        let label = UILabel()
        label.text = "$10000"
        label.textColor = UIColor(named: "textColor")
        label.frame.origin.x = UIScreen.main.bounds.width / 2
        label.frame.origin.y = yposition
        label.textAlignment = .left
        label.frame.size.width = UIScreen.main.bounds.width / 2
        label.frame.size.height = CGFloat(40)
        label.font = UIFont.boldSystemFont(ofSize: 18.0)
        label.adjustsFontSizeToFitWidth = true
        label.minimumScaleFactor = 4
        return label
    }()
    
    lazy var downPaymentSelectedLabel: UILabel = {
        let label = UILabel()
        label.text = "$10000"
        label.textColor = UIColor(named: "textColor")
        label.frame.origin.x = UIScreen.main.bounds.width / 2
        label.frame.origin.y = yposition
        label.textAlignment = .left
        label.frame.size.width = UIScreen.main.bounds.width / 2
        label.frame.size.height = CGFloat(40)
        label.font = UIFont.boldSystemFont(ofSize: 18.0)
        label.adjustsFontSizeToFitWidth = true
        label.minimumScaleFactor = 4
        return label
    }()
    
    lazy var repaymentSelectedLabel: UILabel = {
        let label = UILabel()
        label.text = "2 years"
        label.textColor = UIColor(named: "textColor")
        label.frame.origin.x = UIScreen.main.bounds.width / 2
        label.frame.origin.y = yposition
        label.textAlignment = .left
        label.frame.size.width = UIScreen.main.bounds.width / 2
        label.frame.size.height = CGFloat(40)
        label.font = UIFont.boldSystemFont(ofSize: 18.0)
        label.adjustsFontSizeToFitWidth = true
        label.minimumScaleFactor = 4
        return label
    }()
    
    lazy var interestSelectedLabel: UILabel = {
        let label = UILabel()
        label.text = "1 %"
        label.textColor = UIColor(named: "textColor")
        label.frame.origin.x = UIScreen.main.bounds.width / 2
        label.frame.origin.y = yposition
        label.textAlignment = .left
        label.frame.size.width = UIScreen.main.bounds.width / 2
        label.frame.size.height = CGFloat(40)
        label.font = UIFont.boldSystemFont(ofSize: 18.0)
        label.adjustsFontSizeToFitWidth = true
        label.minimumScaleFactor = 4
        return label
    }()
    
    lazy var loanSelectedLabel: UILabel = {
        let label = UILabel()
        label.text = "$0"
        label.textColor = UIColor(named: "textColor")
        label.frame.origin.x = 20
        label.frame.origin.y = yposition
        label.textAlignment = .left
        label.frame.size.width = UIScreen.main.bounds.width / 2
        label.frame.size.height = CGFloat(40)
        label.font = UIFont.boldSystemFont(ofSize: 25.0)
        label.adjustsFontSizeToFitWidth = true
        label.minimumScaleFactor = 4
        return label
    }()
    
    lazy var estimateSelectedLabel: UILabel = {
        let label = UILabel()
        label.text = "$0"
        label.textColor = UIColor(named: "textColor")
        label.frame.origin.x = 20
        label.frame.origin.y = yposition
        label.textAlignment = .left
        label.frame.size.width = UIScreen.main.bounds.width / 2
        label.frame.size.height = CGFloat(40)
        label.font = UIFont.boldSystemFont(ofSize: 25.0)
        label.adjustsFontSizeToFitWidth = true
        label.minimumScaleFactor = 4
        return label
    }()
    
    lazy var purchaseSlider: UISlider = {
        let slider = UISlider()
        slider.frame.origin.x = UIScreen.main.bounds.width / 16
        slider.frame.origin.y = yposition
        slider.frame.size.width = UIScreen.main.bounds.width / 1.5
        slider.frame.size.height = CGFloat(40)
        slider.minimumTrackTintColor = UIColor(named: "sliderColor")
        slider.thumbTintColor = UIColor(named: "sliderColor")
        slider.addTarget(self, action: #selector(purchasePriceAction(sender:)), for: .touchUpInside)
        slider.minimumValue = 100000
        slider.maximumValue = 1000000
        return slider
    }()
    
    lazy var downPaymentSlider: UISlider = {
        let slider = UISlider()
        slider.frame.origin.x = UIScreen.main.bounds.width / 16
        slider.frame.origin.y = yposition
        slider.frame.size.width = UIScreen.main.bounds.width / 1.5
        slider.frame.size.height = CGFloat(40)
        slider.minimumTrackTintColor = UIColor(named: "sliderColor")
        slider.thumbTintColor = UIColor(named: "sliderColor")
        slider.addTarget(self, action: #selector(downPaymentAction(sender:)), for: .touchUpInside)
        slider.minimumValue = 100000
        slider.maximumValue = 1000000
        return slider
    }()
    
    lazy var repaymentSlider: UISlider = {
        let slider = UISlider()
        slider.frame.origin.x = UIScreen.main.bounds.width / 16
        slider.frame.origin.y = yposition
        slider.frame.size.width = UIScreen.main.bounds.width / 1.5
        slider.frame.size.height = CGFloat(40)
        slider.minimumTrackTintColor = UIColor(named: "sliderColor")
        slider.thumbTintColor = UIColor(named: "sliderColor")
        slider.addTarget(self, action: #selector(repaymentAction(sender:)), for: .touchUpInside)
        slider.minimumValue = 2
        slider.maximumValue = 30
        return slider
    }()
    
    lazy var interestSlider: UISlider = {
        let slider = UISlider()
        slider.frame.origin.x = UIScreen.main.bounds.width / 16
        slider.frame.origin.y = yposition
        slider.frame.size.width = UIScreen.main.bounds.width / 1.5
        slider.frame.size.height = CGFloat(40)
        slider.minimumTrackTintColor = UIColor(named: "sliderColor")
        slider.thumbTintColor = UIColor(named: "sliderColor")
        slider.addTarget(self, action: #selector(interestAction(sender:)), for: .touchUpInside)
        slider.minimumValue = 1
        slider.maximumValue = 15
        return slider
    }()

    func setupUI(){

        yposition = 60
        
        stack.addSubview(appTitle)
        yposition += CGFloat(40) + CGFloat(40)
        
        stack.addSubview(purchasePriceLabel)
    
        stack.addSubview(purchasePriceSelectedLabel)
        yposition += CGFloat(40) + CGFloat(10)
        
        stack.addSubview(purchaseSlider)
        yposition += CGFloat(40) + CGFloat(10)
        
        
        stack.addSubview(downPaymentLabel)
        stack.addSubview(downPaymentSelectedLabel)
        yposition += CGFloat(40) + CGFloat(10)
        
        stack.addSubview(downPaymentSlider)
        yposition += CGFloat(40) + CGFloat(10)
        
        stack.addSubview(repaymentLabel)
        stack.addSubview(repaymentSelectedLabel)
        yposition += CGFloat(40) + CGFloat(10)
        
        stack.addSubview(repaymentSlider)
        yposition += CGFloat(40) + CGFloat(10)
        
        stack.addSubview(interestLabel)
        stack.addSubview(interestSelectedLabel)
        yposition += CGFloat(40) + CGFloat(10)
        
        stack.addSubview(interestSlider)
        yposition += CGFloat(40) + CGFloat(10)
        
        stack.addSubview(loanLabel)
        yposition += CGFloat(40) + CGFloat(10)
        
        stack.addSubview(loanSelectedLabel)
        yposition += CGFloat(40) + CGFloat(10)
        
        stack.addSubview(estimateLabel)
        yposition += CGFloat(40) + CGFloat(10)
        
        stack.addSubview(estimateSelectedLabel)
        yposition += CGFloat(40) + CGFloat(10)
        
        view.addSubview(stack)
    }
    
    @objc private func purchasePriceAction(sender: UISlider) {
        purchasePriceSelectedLabel.text = "$" + String(format: "%.0f", sender.value)
        updateLoanAmount()
        updateMonthlyPayment()
    }
    
    @objc private func downPaymentAction(sender: UISlider) {
        downPaymentSelectedLabel.text = "$" + String(format: "%.0f", sender.value)
        updateLoanAmount()
        updateMonthlyPayment()
    }
    
    @objc private func repaymentAction(sender: UISlider) {
        repaymentSelectedLabel.text = String(format: "%.0f", sender.value) + " years"
        updateMonthlyPayment()
    }
    
    @objc private func interestAction(sender: UISlider) {
        interestSelectedLabel.text = String(format: "%.0f", sender.value) + " %"
        updateMonthlyPayment()
    }
    
    func updateLoanAmount(){
        if let purchase = Int((purchasePriceSelectedLabel.text?.dropFirst())!){
            if let payment = Int((downPaymentSelectedLabel.text?.dropFirst())!){
                let loanAmount = purchase - payment
                loanSelectedLabel.text = "$" + String(loanAmount)
            }
        }
    }
    
    func updateMonthlyPayment(){
        if let purchase = Int((purchasePriceSelectedLabel.text?.dropFirst())!){
            if let payment = Int((downPaymentSelectedLabel.text?.dropFirst())!){
                let P = Double(purchase - payment)
                var n = Double((repaymentSelectedLabel.text?.dropLast(6))!)!
                var r = Double((interestSelectedLabel.text?.dropLast(2))!)!

                n = n * 12.0
                r = Double(r) / Double(12)
                
                let half = (r * (pow((1 + r),n)))
                let secondHalf = (pow(1 + r, n) - 1.0)
                
                let M = P * (half / secondHalf)
                estimateSelectedLabel.text = "$" + String(format: "%.0f", M)
            }
        }
    }
    
}

