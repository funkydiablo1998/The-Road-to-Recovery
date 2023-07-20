import UIKit

class TheRoadToRecoveryViewController: UIViewController {

    // MARK: - Properties

    var textFields = [UITextField]()
    var labels = [UILabel]()
    var checkboxImages = [UIImageView]()
    var slider = [UISlider]()
    var steppers = [UIStepper]()
    var toggleSwitch = [UISwitch]()
    let progressView = UIProgressView()
    
    // MARK: - Lifecycle Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupUI()
    }
    
    // MARK: - UI Setup
    
    func setupUI() {
        setupTextFields()
        setupLabels()
        setupCheckboxImages()
        setupSlider()
        setupSteppers()
        setupToggleSwitch()
        setupProgressView()
    }
    
    // MARK: - Setup TextFields
    
    func setupTextFields() {
        for _ in 0..<5 {
            let textField = UITextField()
            self.textFields.append(textField)
            self.view.addSubview(textField)
        }
    }
    
    // MARK: - Setup Labels
    
    func setupLabels() {
        for _ in 0..<3 {
            let label = UILabel()
            self.labels.append(label)
            self.view.addSubview(label)
        }
    }
    
    // MARK: - Setup Checkbox Images
    
    func setupCheckboxImages() {
        for _ in 0..<4 {
            let checkboxImage = UIImageView()
            self.checkboxImages.append(checkboxImage)
            self.view.addSubview(checkboxImage)
        }
    }
    
    // MARK: - Setup Slider
    
    func setupSlider() {
        for _ in 0..<2 {
            let slider = UISlider()
            self.slider.append(slider)
            self.view.addSubview(slider)
        }
    }
    
    // MARK: - Setup Steppers
    
    func setupSteppers() {
        for _ in 0..<3 {
            let stepper = UIStepper()
            self.steppers.append(stepper)
            self.view.addSubview(stepper)
        }
    }
    
    // MARK: - Setup Toggle Switch
    
    func setupToggleSwitch() {
        for _ in 0..<4 {
            let toggleSwitch = UISwitch()
            self.toggleSwitch.append(toggleSwitch)
            self.view.addSubview(toggleSwitch)
        }
    }
    
    // MARK: - Setup Progress View
    
    func setupProgressView() {
        self.progressView.progress = 0.0
        self.view.addSubview(progressView)
    }
    
    // MARK: - Helper Methods
    
    func updateProgressView() {
        if self.toggleSwitch[0].isOn && self.toggleSwitch[1].isOn && self.toggleSwitch[2].isOn && self.toggleSwitch[3].isOn {
            self.progressView.progress = 1.0
            self.showSuccessMessage()
        }
    }
    
    func showSuccessMessage() {
        let alertController = UIAlertController(title: "Success!", message: "You have completed The Road to Recovery!", preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            self.dismiss(animated: true, completion: nil)
        }
        alertController.addAction(okAction)
        self.present(alertController, animated: true, completion: nil)
    }
    
    // MARK: - Actions
    
    @objc func textFieldDidEndEditing(textField: UITextField) {
        // Do something
    }
    
    @objc func sliderValueDidChange(slider: UISlider) {
        // Do something
    }
    
    @objc func stepperValueDidChange(stepper: UIStepper) {
        // Do something
    }
    
    @objc func toggleSwitchValueDidChange(toggleSwitch: UISwitch) {
        self.updateProgressView()
    }
    
    @objc func checkboxImageTapped(gesture: UITapGestureRecognizer) {
        // Do something
    }
    
    @objc func submitButtonTapped() {
        // Do something
    }
    
    // MARK: - Layout
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        // Layout text fields
        // Layout labels
        // Layout checkbox images
        // Layout slider
        // Layout steppers
        // Layout toggle switch
        // Layout progress view
    }

}