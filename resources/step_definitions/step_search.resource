*** Settings ***
Resource    ../../resources/page_objects/home.resource
Resource    ../../resources/page_objects/header.resource
Resource    ../../resources/page_objects/login.resource
Resource    ../../resources/page_objects/search_results.resource

*** Keywords ***

je suis sur la page d'accueil
    Check home page
je saisi une chaine de caractères
    Enter search term
je clique sur "Entrer"
    Validate
des résultats de la recherche s'affichent
    Check Search result page