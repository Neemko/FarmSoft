//============================
// MARK: - Parameters
//============================

//Valeur de la banque
var money = 0.0
//La grange
var barn = ["milk": 0, "wheat": 0, "wool": 0]

//============================
// MARK: - Acivities
//============================

func feedCows() {
    //Joe Nourrit les vaches
    money -= 4
}

func sell() {
    //on vends !
    money += Double(barn["milk"]!) * 0.5
    money += Double(barn["wheat"]!) * 0.3
    money += Double(barn["wool"]!) * 1
    //on vide la grange
    barn = ["milk": 0, "wheat": 0, "wool": 0]
}

//Joe moissone = blé
func harvest() {
    barn["wheat"]! += 100
}

//Joe tond les moutons = laine
func mowSheep() {
    barn["wool"]! += 30
}

// Joe trait les vaches = lait
func milkCows() {
    barn["milk"]! += 30
}

//======================
// MARK: - Conversation
//======================

func selectActivities() {
    print("Qu'avez-vous fait aujourd'hui ?"
    + "\n1. J'ai nourri mes animaux"
    + "\n2. J'ai vendu mes produits"
    + "\n3. J'ai trait mes vaches"
    + "\n4. J'ai moissoné"
    + "\n5. J'ai tondu mes moutons")
    
    if let activitiesChoice = readLine() {
        switch activitiesChoice {
        case "1" :
            feedCows()
            print("la Banque est déduit de 4 euros")
        case "2" :
            sell()
            print("La vente est effectuée avec succès ! Il y a désormais \(money) euros à la banque.")
        case "3" :
            milkCows()
            print("30 bidons de lait viennent de rejoindre la grange !")
        case "4" :
            harvest()
            print("100 bottes de blé viennent de rejoindre la grange !")
        case "5" :
            mowSheep()
            print("30 pelottes de laine viennent de rejoindre la grange !")
        default:
            print("Je ne comprend pas")
        }
    }
}

func Summary() {
    print("Que Voulez vous faire ?"
    + "\n1. 🤸‍♂️ Enregistrer une nouvelle activité"
    + "\n2. 🏦 Consulter ma banque"
    + "\n3. 🏡 Consulter ma grange")
    
    if let choice = readLine() {
        switch choice {
        case "1" :
            selectActivities()
        case "2" :
            print ("Votre banque contient \(money) euros !")
        case "3" :
            print("Votre grange contient :"
           + "\n🍼 \(barn["milk"]!) bidons de lait"
           + "\n🌾 \(barn["wheat"]!) bottes de blé"
           + "\n🧶 \(barn["wool"]!) pelottes de laine")
        default:
            print("Je ne comprend pas")
        }
    }
}

//====================
// MARK: - Programme :
//====================
while true {
Summary()
}




