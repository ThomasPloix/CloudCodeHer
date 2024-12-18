@REQ_MIN04-36
Feature: Connexion et authentification

	@TEST_MIN04-41
	Scenario: Connexion réussie avec des identifiants valides
		Scenario: Connexion réussie avec des identifiants valides
		Given L'utilisateur se trouve sur la page de connexion
		When L'utilisateur saisit des identifiants valides
		Then L'utilisateur est connecté et redirigé vers la page d'accueil.
		
	@TEST_MIN04-42
	Scenario: Message d'erreur en cas d'identifiants incorrects
		Scenario: Message d'erreur en cas d'identifiants incorrects
		Given L'utilisateur se trouve sur la page de connexion
		When L'utilisateur saisit des identifiants invalides
		Then Un message d'erreur s'affiche indiquant un problème d'authentification.
		
	@TEST_MIN04-43
	Scenario: Déconnexion réussie
		Scenario: Déconnexion réussie
		Given L'utilisateur est connecté
		When L'utilisateur clique sur le bouton "Se déconnecter"
		Then L'utilisateur est déconnecté et redirigé vers la page de connexion.
		
