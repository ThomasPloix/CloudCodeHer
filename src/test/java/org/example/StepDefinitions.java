package org.example;

import io.cucumber.java.en.*;
import static org.junit.jupiter.api.Assertions.*;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.firefox;
import org.openqa.selenium.firefox.FirefoxDriver;


public class StepDefinitions {

    private Webdriver driver;

    @Given("L'utilisateur se trouve sur la page de connexion")
    public void l_utilisateur_se_trouve_sur_la_page_de_connexion() {
        // Write code here that turns the phrase above into concrete actions
        driver = new FirefoxDriver();
        driver.get(url:"https://saucedemo.com");
        driver.sleep(millis:5000);
    }
    @When("L'utilisateur saisit des identifiants valides")
    public void l_utilisateur_saisit_des_identifiants_valides() {
        // Write code here that turns the phrase above into concrete actions
        driver.findElement(By.id("user-name")).sendKeys("standard_user");
        driver.findElement(By.id("password")).sendKeys("secret_sauce");
        driver.findElement(By.id("login-button")).click();
        Thread.sleep(millis:5000);
    }
    @Then("L'utilisateur est connecté et redirigé vers la page d'accueil.")
    public void l_utilisateur_est_connecté_et_redirigé_vers_la_page_d_accueil() {
        // Write code here that turns the phrase above into concrete actions
        
    }


    @Given("L'utilisateur se trouve sur la page de connexion")
    public void l_utilisateur_se_trouve_sur_la_page_de_connexion() {
        // Write code here that turns the phrase above into concrete actions
        throw new io.cucumber.java.PendingException();
    }
    @When("L'utilisateur saisit des identifiants invalides")
    public void l_utilisateur_saisit_des_identifiants_invalides() {
        // Write code here that turns the phrase above into concrete actions
        throw new io.cucumber.java.PendingException();
    }
    @Then("Un message d'erreur s'affiche indiquant un problème d'authentification.")
    public void un_message_d_erreur_s_affiche_indiquant_un_problème_d_authentification() {
        // Write code here that turns the phrase above into concrete actions
        throw new io.cucumber.java.PendingException();
    }


    @Given("L'utilisateur est connecté")
    public void l_utilisateur_est_connecté() {
        // Write code here that turns the phrase above into concrete actions
        throw new io.cucumber.java.PendingException();
    }
    @When("L'utilisateur clique sur le bouton {string}")
    public void l_utilisateur_clique_sur_le_bouton(String string) {
        // Write code here that turns the phrase above into concrete actions
        throw new io.cucumber.java.PendingException();
    }
    @Then("L'utilisateur est déconnecté et redirigé vers la page de connexion.")
    public void l_utilisateur_est_déconnecté_et_redirigé_vers_la_page_de_connexion() {
        // Write code here that turns the phrase above into concrete actions
        throw new io.cucumber.java.PendingException();
    }
}
