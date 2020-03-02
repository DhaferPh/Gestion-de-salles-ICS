package Metiers;

import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.sql.Connection;

public class Utilisateurs {
	private final static String urlConnexion = "jdbc:postgresql://localhost:5432/SchoolDatingDB";
	private final static String username = "postgres";
	private final static String password = "Dhafer1983";
	
	

	public ArrayList<Utilisateur> recupererUtilisateur() {

		ArrayList<Utilisateur> ArrayUtilisateurs = new ArrayList<Utilisateur>();
		//System.out.println("start méthode");

		// chargement de Driver
		try {
			Class.forName("org.postgresql.Driver");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		;
		// connexion à la BD
		Connection connexion = null;
		ResultSet resultat = null;
		Statement statement = null;

		try {
			connexion = DriverManager.getConnection(urlConnexion, username, password);

			statement = connexion.createStatement();
			// exécution de la requête

			resultat = statement.executeQuery("SELECT nom, prenom, email, numerotelephone FROM utilisateursschooldating");

			// récupération des données
			System.out.println("mon résultat :" + resultat.toString());
			while (resultat.next()) {

				String nom = resultat.getString("nom");
				String prenom = resultat.getString("prenom");
				String email = resultat.getString("email");
				String numerotelephone=resultat.getString("numerotelephone");
				
				
				Utilisateur utilisateur = new Utilisateur(nom, prenom, email, numerotelephone);
				utilisateur.setNom(nom);
				utilisateur.setPrenom(prenom);
				utilisateur.setEmail(email);
				utilisateur.setNumerotelephone(numerotelephone);
				
				System.out.println("mon utilisateur : " + utilisateur.toString());
				ArrayUtilisateurs.add(utilisateur);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {

			// fermeture de la connexion
			try {
				if (resultat != null)
					resultat.close();
				if (statement != null)
					statement.close();
				if (connexion != null)
					connexion.close();

			} catch (SQLException ignore) {
			}
			;
		}

		return ArrayUtilisateurs;

	}

	

	
}
