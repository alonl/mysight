package br.com.caelum.pagpag.components;

import java.net.URI;
import java.net.URISyntaxException;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class HerokuDatabaseInformation {
	
	private static final Logger logger = LoggerFactory
			.getLogger(HerokuDatabaseInformation.class);

	private final URI database;

	public HerokuDatabaseInformation(String databaseUrl) {
		try {
			this.database = new URI(databaseUrl);
		} catch (URISyntaxException e) {
			throw new RuntimeException(e);
		}
	}

	public void exportToSystem() {
		logger.info("Using " + url());
		System.setProperty("heroku_database", url());

		String[] userInfo = database.getUserInfo().split(":");
		logger.info("Using " + user(userInfo));
		logger.info("Using " + password(userInfo));
		System.setProperty("heroku_database_user", user(userInfo));
		System.setProperty("heroku_database_password", password(userInfo));
	}

	private String password(String[] userInfo) {
		return userInfo[1];
	}

	private String user(String[] userInfo) {
		return userInfo[0];
	}

	private String url() {
		return "jdbc:postgresql://" + database.getHost() + ":" + database.getPort() + database.getPath();
	}

}
