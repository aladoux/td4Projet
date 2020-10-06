Feature: Suppression des ateliers

    US : 21
    Un laboratoire doit pouvoir supprimer un atelier

    Scenario: Bouton de suppression
        Given un laboratoire qui veut supprimer un atelier
        When il est sur la page de gestion des ateliers
        And au moins un atelier est enregistré
        Then un bouton "Supprimer" est affiché au niveau de l'atelier

    Scenario: Clic sur le bouton de suppression
         Given un laboratoire qui veut supprimer un atelier
        When il est sur la page de gestion des ateliers
        And au moins un atelier est enregistré
        And il clique sur le bouton "Supprimer"
        Then l'atelier est supprimé
        And il n'apparait plus sur la page de gestion des ateliers

