//
//  ViewController.swift
//  Personal-Savings-Calculator
//
//  Created by Michael Solimini on 6/15/16.
//  Copyright © 2016 Michael Solimini. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var amSaved: UITextField!
    @IBOutlet weak var Betterment: UITextField!
    @IBOutlet weak var TD: UITextField!
    @IBOutlet weak var CS: UITextField!
    @IBOutlet weak var Spend: UITextField!
    @IBOutlet weak var Earnings: UITextField!
    @IBOutlet weak var savingPercent: UITextField!
    @IBOutlet weak var BettermentPercentage: UITextField!
    @IBOutlet weak var TDPercentage: UITextField!
    @IBOutlet weak var CSPercentage: UITextField!
    @IBOutlet weak var SpendingPercentage: UITextField!
    
    var amountSaved: Int = 0
    var Bet: Int = 0
    var TorD: Int = 0
    var CashS: Int = 0
    var Spending: Int = 0
    var Earn: Int = 0
    var SavingPercentage: Int = 0
    var BetPercent: Int = 0
    var TDP: Int = 0
    var CSP: Int = 0
    var SP: Int = 0
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func resignKeyboard(sender: AnyObject) {
        sender.resignFirstResponder()
    }
    
    
    func Calculate(sender: AnyObject) {
        if Earnings.text != "" && savingPercent.text != "" {
            guard let earnings = Earnings.text, savingPercent = savingPercent.text else { return }
            let amountSaved = Double(earnings)! * Double(savingPercent)!
            amSaved.text = "\(amountSaved)"
        }
        if amSaved.text != "" && BettermentPercentage.text != "" {
            guard let amSaved = amSaved.text, BettermentPercentage = BettermentPercentage.text else { return }
            let BetDeposit = Double(amSaved)! * Double(BettermentPercentage)!
            Betterment.text = "\(BetDeposit)"
        }
        if amSaved.text != "" && TDPercentage.text != "" {
            guard let amSaved = amSaved.text, TDPercentage = TDPercentage.text else { return }
            let TDDeposit = Double(amSaved)! * Double(TDPercentage)!
            TD.text = "\(TDDeposit)"
        
    }
        if amSaved.text != "" && CSPercentage.text != "" {
            guard let amSaved = amSaved.text, CSPercentage = CSPercentage.text else { return }
            let CSDeposit = Double(amSaved)! * Double(CSPercentage)!
            CS.text = "\(CSDeposit)"
}
        if amSaved.text != "" && SpendingPercentage.text != "" {
            guard let amSaved = amSaved.text, SpendingPercentage = SpendingPercentage.text else { return }
            let CSDeposit = Double(amSaved)! * Double(SpendingPercentage)!
            Spend.text = "\(CSDeposit)"
}
}
}