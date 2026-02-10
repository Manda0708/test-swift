import Foundation

//1. Opérations sur les Tableaux
var entiers = [Int]()
//ajout de 5 élements
entiers.append(1)
entiers += [2, 3, 4, 5]
entiers.remove(at: 2)  // supprimer le deuxième élément
//afficher chaque élement dans une boucle
for entier in entiers {
    print(entier)
}

//2. Manipulation des Tableaux
var couleurs: [String] = ["Rouge", "Jaune", "Bleu", "Vert"]
couleurs[3] = "Violet"  //changer le 4ème élement en violet
print("Premier élement :", couleurs[0])
print("Dernier élement :", couleurs[couleurs.count - 1])
//liage
if couleurs.indices.contains(4) {
    let cinquiemeCouleur = couleurs[4]
    print("Cinquième élement :", cinquiemeCouleur)
} else {
    print("Cinquième élement inexistant")
}

//3. Création de Tuples
let coordonnee: (x: Int, y: Int) = (x: 10, y: 20)  //tupe x, y
let point3D: (x: Int, y: Int, z: Int) = (x: 5, y: 8, z: 12)  //tuple x,y,z
print("Coordonnée : x=\(coordonnee.x), y=\(coordonnee.y)")
print("Point 3D : x=\(point3D.x), y=\(point3D.y), z=\(point3D.z)")

//4. Décomposition de Tuples
let personne = (nom: "Jean", age: 22, poste: "Développeur")
//direct
print("Direct\nNom :", personne.nom)
print("Âge :", personne.age)
print("Poste :", personne.poste)
//décomposition
let (nom, age, poste) = personne
print("Par décomposition\nNom :", nom)
print("Âge :", age)
print("Poste :", poste)

//5. Bases des Dictionnaires
var dict: [String: Int] = [
    "Jean": 22,
    "Jeanne": 20,
]
//ajout de deux entrées
dict["Luc"] = 24
dict["Lucie"] = 26
dict["Lucie"] = 24  //mis à jour
dict.removeValue(forKey: "Luc")  //suppression
//parcourir le dictionnaire
for (nom, age) in dict {
    print("\(nom) a \(age) ans")
}

//6. Dictionnaires Avancés
let voiture: [String: Any] = [
    "couleur": "noir",
    "marque": "Toyota",
    "année": 2022,
]
print("Marque :", voiture["marque"] ?? "Pas de marque")  //accéder à "marque"
//Déballer en toute sécurité et imprimer la valeur de "modèle" en utilisant le liage optionnel (la clé "modèle" peut ou non exister).
if let modele = voiture["modèle"] {
    print("Modèle :", modele)
} else {
    print("Modèle inconnu")
}

//7. Tri des Tableaux
var valeurs = [4, 1, 6, 2, 7, 5]
let croissant = valeurs.sorted()  //tri croissant
print("Croissant :", croissant)
let decroissant = valeurs.sorted(by: >)  //tri décroissant
print("Décroissant :", decroissant)

//8. Structures Mixtes
// tableau de dictionnaires (livres)
var livres: [[String: Any]] = []
//ajout de 3livres
livres.append(["titre": "Titre1", "auteur": "Auteur1", "annee": 2000])
livres.append(["titre": "Titre2", "auteur": "Auteur2", "annee": 2010])
livres.append(["titre": "Titre3", "auteur": "Auteur3", "annee": 2020])
//print
for livre in livres {
    if let titre = livre["titre"], let auteur = livre["auteur"] {
        print("Titre : \(titre), Auteur : \(auteur)")
    }
}

//9. Dictionnaires Complexes
var bibliotheque: [String: [String]] = [
    "fiction": ["Avengers", "Vampire", "Superman"],
    "non-fiction": ["Comédie", "Romance", "Humour"],
]
for (genre, titres) in bibliotheque {
    print("Genre :", genre)
    for titre in titres {
        print("- \(titre)")
    }
}

//10. Filtrage des Dictionnaires
// Dictionnaire produits/prix
let p: [String: Double] = [
    "p1": 1,
    "p2": 3,
    "p3": 25,
    "p4": 15,
]
//fonction
func produitsSousLimite(produits: [String: Double], limite: Double) -> [String: Double] {
    return produits.filter { element in
        element.value < limite
    }
}
let resultat = produitsSousLimite(produits: p, limite: 10)
print("Produits :", resultat)
