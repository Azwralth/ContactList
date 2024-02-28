//
//  Profile.swift
//  ContactList
//
//  Created by Владислав Соколов on 27.02.2024.
//

struct Person {
    let firstName: String
    let lastName: String
    let email: String
    let phone: String
    
    var fullName: String {
        "\(firstName) \(lastName)"
    }
    
    static func gerPersons() -> [Person] {
        let user = DataStore()
        var persons: [Person] = []
        
        let shuffledFirstNames = user.firstNames.shuffled()
        let shuffledLastNames = user.lastNames.shuffled()
        let shuffledEmails = user.emails.shuffled()
        let shuffledPhoneNumbers = user.phoneNumbers.shuffled()
        
        for i in 0..<user.firstNames.count {
            let person = Person(
                firstName: shuffledFirstNames[i],
                lastName: shuffledLastNames[i],
                email: shuffledEmails[i],
                phone: shuffledPhoneNumbers[i]
            )
            persons.append(person)
        }
        
        return persons
    }
}

class DataStore {
    let firstNames = [
        "John",
        "Jane",
        "Michael",
        "Emma",
        "William",
        "Olivia",
        "James",
        "Sophia",
        "Robert",
        "Isabella"
    ]
    let lastNames = [
        "Doe",
        "Smith",
        "Johnson",
        "Brown",
        "Williams",
        "Jones",
        "Miller",
        "Davis",
        "Garcia",
        "Rodriguez"
    ]
    let emails = [
        "john.doe@example.com",
        "jane.smith@example.com",
        "michael.johnson@example.com",
        "emma.brown@example.com",
        "william.williams@example.com",
        "olivia.jones@example.com",
        "james.miller@example.com",
        "sophia.davis@example.com",
        "robert.garcia@example.com",
        "isabella.rodriguez@example.com"
    ]
    let phoneNumbers = [
        "123-456-7890",
        "987-654-3210",
        "555-555-5555",
        "111-222-3333",
        "444-444-4444",
        "666-666-6666",
        "777-777-7777",
        "888-888-8888",
        "999-999-9999",
        "000-000-0000"
    ]
}
