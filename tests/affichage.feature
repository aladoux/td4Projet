Feature: Affichage de la liste des ateliers

    US : 3
    Un laboratoire doit pouvoir visualiser sous forme de liste les ateliers qu'il a créé

    Scenario: Aucun atelier créé
        Given un laboratoire qui à créé un atelier
        When il est sur la page de gestion des ateliers
        Then aucun atelier n'est affiché

    Scenario: Affichage d'un atelier
        Given un laboratoire qui à créé un atelier
        When il est sur la page de gestion des ateliers
        Then l'atelier est affiché sous le bouton "Create Workshop"

    Scenario: Affichage de plusieurs ateliers
        Given un laboratoire qui à créé plusieurs ateliers
        When il est sur la page de gestion des ateliers
        Then les ateliers sont affichés sous forme de liste (l'un au dessus de l'autre)

    Scenario: Affichage sous forme chronologique
        Given un laboratoire qui créé plusieurs ateliers
        When il est sur la page de gestion des ateliers
        Then les ateliers sont affichés de façon chronologique, le plus récent en bas et le plus vieux en haut
