/// <reference types="cypress" />
import { Given, Then, When } from "@badeball/cypress-cucumber-preprocessor";


const url = "https://www.automationexercise.com/login";


Given('El usuario este dentro de la pagina de login', () => {
    cy.visit(url);
})

When('El usuario ingresa {} en el campo usuario', (username) => {
    cy.get('input[data-qa="login-email"]').type(username);
    
})

When('El usuario ingresa {} en el campo password', (password) => {
    cy.get('input[data-qa="login-password"]').type(password);
    
})

When('El usuario presiona el boton de login', () => {
    cy.get('button[data-qa="login-button"]').click();
    
})

Then('el usuario visualiza el mensaje {string}', (errorMessage) => {
    cy.get('div[class="login-form"]>form>p').should('have.text', errorMessage);

})

Then('El usuario espera que se muestre {string}', (logout_option) => {
    cy.get('.shop-menu>ul>li:nth-child(4)>a').should('have.text', logout_option);

})