import UIKit

//1
var patientName: String = ""

//2
var temperature: Float = 0.0

//3
enum InjuryType {
    case brokenBone
    case sprain
    case concussion
}

//4
var injury: InjuryType = .brokenBone

//5
func checkPatientData (name: String, temp: Float, injury: InjuryType) {

//6
    patientName = name

//7
    temperature = temp

//8
    if temperature > 100 {
        print("Temperature is too high.")
    }

//9
    self.injury = injury

//10
    print("Patient's name is \(name), temperature is \(temp) and injury type is \(injury).")
}

//11
func assignTreatment() -> String {
    switch injury {
    case .brokenBone:
        return "Apply a cast to the broken bone."
    case .sprain:
        return "Immobilize the joint with an ankle or knee brace."
    case .concussion:
        return "Rest and monitor for symptoms of a concussion."
    }
}

//12
func setTreatmentGoals(name: String, injury: InjuryType) {

//13
    print("\nTreatment goals for \(name): ")

//14
    switch injury {
    case .brokenBone:
        print("1. Reduce pain and swelling.\n2. Support the bone.\n3. Promote healing.")
    case .sprain:
        print("1. Reduce pain and swelling.\n2. Increase joint stability.\n3. Restore range of motion.")
    case .concussion:
        print("1. Monitor for signs and symptoms.\n2. Rest.\n3. Return to physical activity gradually.")
    }
}

//15
func documentVisit(name: String, temp: Float) {

//16
    print("\nPatient: \(name)")

//17
    print("Temperature: \(temp) degrees Fahrenheit")

//18
    print("Injury Type: \(injury)")

//19
    print("Treatment Plan: \(assignTreatment())")
}

//20
func returnHome() {
    print("Go home and follow the treatment plan." )
}

//21
func checkFollowUpVisit (name: String) {
    print("Make a follow-up appointment for \(name) in 2 weeks.")
}

//22
func takeTemp(name: String) -> Float {
    print("Take \(name)'s temperature.")
    return 98.6
}

//23
func assessInjury(name: String) -> InjuryType {
    print("Assess \(name)'s injury.")
    return InjuryType.sprain
}

//24
func greetPatient (name: String) {
    print("Welcome, \(name). How can I help you today?")
}

//25
func startRecoveryJourney () {

//26
    print("\nStart of Recovery Journey")

//27
    print("-----------------------------\n")

//28
    let name = "John Doe"

//29
    greetPatient(name: name)

//30
    let temp = takeTemp(name: name)

//31
    let injury = assessInjury(name: name)

//32
    checkPatientData(name: name, temp: temp, injury: injury)

//33
    setTreatmentGoals(name: name, injury: injury)

//34
    documentVisit(name: name, temp: temp)

//35
    returnHome()

//36
    checkFollowUpVisit(name: name)

//37
    print("\nEnd of Recovery Journey")

//38
    print("-----------------------------")

}

//39
startRecoveryJourney()