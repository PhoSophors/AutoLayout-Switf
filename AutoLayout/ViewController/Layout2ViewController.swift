
// LayoutViewController.swift
// AutoLayout

import UIKit

class Layout2ViewController: UIViewController {


  // MARK: - Properties
    
    @objc func button1Tapped() {
        let layoutViewController = LayoutViewController()
        navigationController?.pushViewController(layoutViewController, animated: true)
    }


  let button1: UIButton = {
    let button = UIButton()
    button.setTitle("Button 1", for: .normal)
    button.backgroundColor = .blue
    button.layer.cornerRadius = 10
    button.translatesAutoresizingMaskIntoConstraints = false

    return button
  }()

  let button2: UIButton = {
    let button = UIButton()
    button.setTitle("Button 2", for: .normal)
    button.backgroundColor = .red
    button.layer.cornerRadius = 10
    button.translatesAutoresizingMaskIntoConstraints = false
    return button
  }()

  let button3: UIButton = {
    let button = UIButton()
    button.setTitle("Button 3", for: .normal)
    button.backgroundColor = .red
    button.layer.cornerRadius = 10
    button.translatesAutoresizingMaskIntoConstraints = false
    return button
  }()

    let usernameText: UITextField = {
        let username = UITextField()
        username.placeholder = "Username"
        username.borderStyle = .roundedRect
        return username
    }()

  // MARK: - Lifecycle Methods

  override func viewDidLoad() {
    super.viewDidLoad()
    view.backgroundColor = .white
      
    setupButtons()
    setupConstraints()
      
  // Connect button1 to button1Tapped action
  button1.addTarget(self, action: #selector(button1Tapped), for: .touchUpInside)
  }

  // MARK: - Helper Methods

  private func setupButtons() {
    view.addSubview(button1)
    view.addSubview(button2)
    view.addSubview(button3)
  }

  private func setupConstraints() {
    // Button 1 constraints
    NSLayoutConstraint.activate([
      button1.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
      button1.centerXAnchor.constraint(equalTo: view.centerXAnchor),
      button1.heightAnchor.constraint(equalToConstant: 50),
      button1.widthAnchor.constraint(equalToConstant: 100)
    ])

    // Button 2 constraints
    NSLayoutConstraint.activate([
      button2.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -20),
      button2.centerXAnchor.constraint(equalTo: view.centerXAnchor),
      button2.heightAnchor.constraint(equalToConstant: 50),
      button2.widthAnchor.constraint(equalToConstant: 100)
    ])

    // Button 3 constraints (center horizontally and vertically within safe area)
    NSLayoutConstraint.activate([
      button3.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
      button3.centerYAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerYAnchor),
      button3.heightAnchor.constraint(equalToConstant: 50),
      button3.widthAnchor.constraint(equalToConstant: 100)
    ])
  }
}
