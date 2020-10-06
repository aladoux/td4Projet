Feature: Modification des ateliers

    US : 20
    Un laboratoire doit pouvoir modifier un atelier déjà créé

    Scenario: Bouton de modification
        Given un laboratoire qui veut modifier un atelier
        When il est sur la page de gestion des ateliers
        And au moins un atelier est enregistré
        Then un bouton "Modifier" est affiché au niveau de l'atelier

    Scenario: Clic sur le bouton de modification
        Given un laboratoire qui veut modifier un atelier
        When il est sur la page de gestion des ateliers
        And au moins un atelier est enregistré
        And il clique sur "Modifier"
        Then il est redirigé sur une page avec un formulaire contenant les champs de l'atelier

    Scenario: Validation de la modification
        Given un laboratoire qui à créé un atelier
        And il est sur la page de gestion des ateliers
        And il clique sur le bouton "Modifier" associé à l'atelier
        When il modifie les champs du formulaire
        And il clique sur le bouton "Valider"
        Then les changements sont enregistrés


    Scenario: Annulation de la modification
        Given un laboratoire qui à créé un atelier
        And il est sur la page de gestion des ateliers
        And il clique sur le bouton "Modifier" associé à l'atelier
        When il modifie les champs du formulaire
        And il clique sur le bouton "Annuler"
        Then les changements ne sont pas enregistrés
