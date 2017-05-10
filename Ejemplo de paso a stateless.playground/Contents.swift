struct User {
	var id: Int
	var name: String
	var active: Bool
}

class UserDatabase {
    let users = [
        User(id: 1,  name: "Bruce",      active: false),
        User(id: 2,  name: "Rachel",     active: false),
        User(id: 3,  name: "Brian",      active: true),
        User(id: 4,  name: "Susan",      active: false),
        User(id: 5,  name: "Louise",     active: true),
        User(id: 6,  name: "Deborah",    active: false),
        User(id: 7,  name: "Jennifer",   active: false),
        User(id: 8,  name: "Joyce",      active: false),
        User(id: 9,  name: "Julie",      active: false),
        User(id: 10, name: "Lillian",    active: true),
        User(id: 11, name: "Wanda",      active: false),
        User(id: 12, name: "Phyllis",    active: false),
        User(id: 13, name: "Justin",     active: false),
        User(id: 14, name: "Cristopher", active: true),
        User(id: 15, name: "Martha",     active: true),
        User(id: 16, name: "Rachel",     active: false),
        User(id: 17, name: "Shirley",    active: true),
        User(id: 18, name: "Phyllis",    active: false),
        User(id: 19, name: "Todd",       active: false),
        User(id: 20, name: "Eric",       active: true),
        User(id: 21, name: "Jonathan",   active: false),
        User(id: 22, name: "Frank",      active: true),
        User(id: 23, name: "Ernest",     active: false),
        User(id: 24, name: "Christine",  active: false),
        User(id: 25, name: "Helen",      active: true),
        User(id: 26, name: "Albert",     active: false),
        User(id: 27, name: "Carol",      active: false),
        User(id: 28, name: "Harold",     active: false),
        User(id: 29, name: "Arthur",     active: false),
        User(id: 30, name: "Stephen",    active: false)
    ]
    
    func activeUserNames() -> [String] {
        let activeUsers = users.filter { (user) -> Bool in
            return user.active
        }
        
        let sortedUsers = activeUsers.sorted { (user1, user2) -> Bool in
            return user1.id < user2.id
        }
        
        var activeUserNames = [String]()
        
        for user in activeUsers {
            activeUserNames.append(user.name)
        }
        
        return activeUserNames
    }
}

let database = UserDatabase()

print(database.activeUserNames())