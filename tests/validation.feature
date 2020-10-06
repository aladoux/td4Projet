Feature: Validation des ateliers

    US : 22
    Un laboratoire doit pouvoir valider ou non des ateliers proposés

    Scenario: Bouton de validation
        Given un laboratoire qui veut valider un atelier
        When il est sur la page de validation des ateliers
        And au moins un atelier est enregistré
        Then un bouton "Valider" est affiché au niveau de l'atelier

    Scenario: Clic sur le bouton de validation
        Given un laboratoire qui veut valider un atelier
        When il est sur la page de validation des ateliers
        And au moins un atelier est enregistré
        And il clique sur le bouton "Valider"
        Then l'atelier est validé
        And il apparaît dans la page de gestion des ateliers


    Scenario: Bouton de non validation
        Given un laboratoire qui veut refuser un atelier
        When il est sur la page de validation des ateliers
        And au moins un atelier est enregistré
        Then un bouton "Refuser" est affiché au niveau de l'atelier

    Scenario: Clic sur le bouton Refuser
        Given un laboratoire qui veut refuser un atelier
        When il est sur la page de validation des ateliers
        And au moins un atelier est enregistré
        And il clique sur le bouton "Refuser"
        Then l'atelier est refusé
        And il est supprimé
        And il n'apparaît pas sur les pages de gestion et validation des ateliers

    Scenario: Affichage des ateliers non validés
        Given un atelier qui est en attente de validation
        And qui est affiché dans la page de validation
        When le laboratoire ne fait rien
        Then l'atelier n'est pas affiché dans la page de gestion
