import UIKit

class ViewController: UIViewController {
   
    private var constraints = [NSLayoutConstraint]()
    
    private let tableViewController: SecondViewController = {
        $0.view.translatesAutoresizingMaskIntoConstraints = false
        return $0
    }(SecondViewController())
    
    private let collectionViewController: ThirdViewController = {
        $0.view.translatesAutoresizingMaskIntoConstraints = false
        return $0
    }(ThirdViewController())
    
    private lazy var segmentedControl: UISegmentedControl = {
        let segmentedControl = UISegmentedControl(items: ["Таблица","Коллекция"])
        segmentedControl.translatesAutoresizingMaskIntoConstraints = false
        segmentedControl.selectedSegmentIndex = 0
        return segmentedControl
      }()
    
    private let textField: UITextField = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.placeholder = "Число"
        $0.borderStyle = .roundedRect
        return $0
    }(UITextField())
    
    private let button: UIButton = {
        var configuration = UIButton.Configuration.borderedProminent()
        configuration.title = "Создать"
        configuration.baseBackgroundColor = .systemFill
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.configuration = configuration
        return $0
    }(UIButton())
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemMint
       
        view.addSubview(textField)
        view.addSubview(button)
        view.addSubview(segmentedControl)
       
        NSLayoutConstraint.activate([
            textField.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            view.safeAreaLayoutGuide.bottomAnchor.constraint(equalTo: textField.bottomAnchor, constant: 100.0),
            
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            view.safeAreaLayoutGuide.bottomAnchor.constraint(equalTo: button.bottomAnchor, constant: 20.0),
          
            segmentedControl.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            segmentedControl.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
        ])
        
//        button.addAction(UIAction { [unowned self] _ in
            tableViewController.items = Array(1...10)
            collectionViewController.items = Array(1...10)
//        }, for: .touchUpInside)
        
        segmentedControl.addAction(UIAction { [unowned self] _ in
            switch segmentedControl.selectedSegmentIndex {
            case 0:
                switchViewController(to: tableViewController)
            case 1:
                switchViewController(to: collectionViewController)
            default:
                preconditionFailure()
            }
        }, for: .valueChanged)
        
        switchViewController(to: tableViewController)
    }
    
    private func switchViewController(to viewController: UIViewController) {
        let currentViewController = children.first { $0 is SecondViewController || $0 is ThirdViewController }
        print(children)
        viewController.willMove(toParent: self)
        addChild(viewController)
        view.addSubview(viewController.view)
        viewController.didMove(toParent: self)
        NSLayoutConstraint.deactivate(constraints)
        constraints = [
            viewController.view.topAnchor.constraint(equalTo: segmentedControl.bottomAnchor),
            viewController.view.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            view.trailingAnchor.constraint(equalTo: viewController.view.trailingAnchor),
            textField.topAnchor.constraint(equalTo: viewController.view.bottomAnchor),
        ]
        NSLayoutConstraint.activate(constraints)
        if let currentViewController {
            transition(from: currentViewController, to: viewController, duration: 0.3, options: .transitionCrossDissolve, animations: nil)
        }
    }
}
    

#Preview {
    ViewController()
}

