import UIKit

class ViewController: UIViewController, CountryPhoneCodePickerDelegate {
    
    @IBOutlet weak var selectedCountryLabel: UILabel!
    @IBOutlet weak var countryPhoneCodePicker: CountryPicker!

    override func viewDidLoad() {
        super.viewDidLoad()
        let code = (Locale.current as NSLocale).object(forKey:NSLocale.Key.countryCode) as! String
        
        countryPhoneCodePicker.countryPhoneCodeDelegate = self
        countryPhoneCodePicker.setCountry(code:code)
    }
    
    // MARK: - CountryPhoneCodePicker Delegate
    
    func countryPhoneCodePicker(picker: CountryPicker, didSelectCountryCountryWithName name: String, countryCode: String, phoneCode: String) {
        selectedCountryLabel.text = name + " " + countryCode + " " + phoneCode
    }
    
}

