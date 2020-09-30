Feature: Création d'un atelier

    US : 2
    Un laboratoire doit pouvoir créer un atelier en cliquant sur un bouton prévu à cet effet

    Scenario: Création d'un atelier via bouton
        Given le laboratoire est sur la page pour créer un atelier
        When le laboratoire clique sur un bouton "Créer un atelier"
        Then une page s'ouvre avec un formulaire pour créer l'atelier

    Scenario: Validation de saisie du formulaire
        Given le laboratoire est sur la page avec le formulaire de création d'atelier
        When le laboratoire remplit les champs du formulaire
        And il clique sur "Save"
        Then l'atelier est enregistré avec champs saisis

    Scenario: Annulation de saisie de formulaire
        Given le laboratoire est sur la page avec le formulaire de création d'atelier
        When le laboratoire remplit les champs du formulaire
        And il clique sur "Cancel"
        Then l'atelier n'est pas enregistré

    Scenario: Echec de saisie du formulaire
        Given le laboratoire est sur la page avec le formulaire de création d'atelier
        When le laboratoire laisse un ou tous les champs vide
        And il clique sur "Save"
        Then une erreur est levée par le formulaire
        And l'atelier n'est pas enregistré
