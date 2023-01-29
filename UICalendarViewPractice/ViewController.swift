//
//  ViewController.swift
//  UICalendarViewPractice
//
//  Created by Ehsan Taghavi on 29.01.2023.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        createCalendar()
    }

    func createCalendar() {
        view.backgroundColor = .systemPink
        let calendarView = UICalendarView()
        calendarView.translatesAutoresizingMaskIntoConstraints = false
        
        calendarView.calendar = .current
        calendarView.locale = .current
        calendarView.fontDesign = .rounded
        calendarView.layer.cornerRadius = 12
        calendarView.backgroundColor = .systemBackground
        calendarView.delegate = self
        
        view.addSubview(calendarView)
        
        NSLayoutConstraint.activate([
            calendarView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            calendarView.trailingAnchor.constraint(equalTo: view.trailingAnchor,constant: -10),
            calendarView.heightAnchor.constraint(equalToConstant: 300),
            calendarView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor)
        ])
    }
}

extension ViewController: UICalendarViewDelegate {
    func calendarView(_ calendarView: UICalendarView, decorationFor dataComponents: DateComponents) -> UICalendarView.Decoration? {
        return nil
    }
}
