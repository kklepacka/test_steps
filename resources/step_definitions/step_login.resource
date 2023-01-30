*** Settings ***
Resource    ../../resources/page_objects/home.resource
Resource    ../../resources/page_objects/header.resource
Resource    ../../resources/page_objects/login.resource

*** Keywords ***

Je suis sur la page d'accueil
    Check home page
Je clique sur le bouton connexion
    Go to connection page
Je saisi mon login
    Set email    tilapia@thefish.com
Je saisi mon mdp
    Set pwd    Tilapia123!!!
Je clique sur Connexion
    Click button Connexion
Je verifie que je suis connectée
    Check if connected


