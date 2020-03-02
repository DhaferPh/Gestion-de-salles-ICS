package Metiers;

public class Utilisateur {
	
		public Utilisateur(String nom, String prenom, String email, String numerotelephone) {
		super();
		this.nom = nom;
		this.prenom = prenom;
		this.email = email;
		this.numerotelephone = numerotelephone;
		
	}
		private String nom;
		private String prenom;
		private String email;
		private String numerotelephone;
		
		public String getNom() {
			return nom;
		}
		public void setNom(String nom) {
			this.nom = nom;
		}
		public String getPrenom() {
			return prenom;
		}
		public void setPrenom(String prenom) {
			this.prenom = prenom;
		}
		public String getEmail() {
			return email;
		}
		public void setEmail(String email) {
			this.email = email;
		}
		public String getNumerotelephone() {
			return numerotelephone;
		}
		public void setNumerotelephone(String numerotelephone) {
			this.numerotelephone = numerotelephone;
		}
		
		
		
		
		
		
		
		
		@Override
		public String toString() {
			return "Utilisateur [nom=" + nom + ", prenom=" + prenom + ", email=" + email + ", numerotelephone="
					+ numerotelephone + "]";
		}
				
	}
