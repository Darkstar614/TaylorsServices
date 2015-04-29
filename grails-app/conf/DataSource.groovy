dataSource {
    pooled = true
    driverClassName = "com.mysql.jdbc.Driver"
	dialect = org.hibenate.dialect.MySQL5InnoDBDialect
}
hibernate {
    cache.use_second_level_cache = true
    cache.use_query_cache = false
//    cache.region.factory_class = 'net.sf.ehcache.hibernate.EhCacheRegionFactory' // Hibernate 3
    cache.region.factory_class = 'org.hibernate.cache.ehcache.EhCacheRegionFactory' // Hibernate 4
    singleSession = true // configure OSIV singleSession mode
    flush.mode = 'manual' // OSIV session flush mode outside of transactional context
}

// environment specific settings
environments {
    development {
		dataSource {
			dbCreate = "create"
			url = "jdbc:mysql://localhost:3306/taylors"
			username = "root"
			password = "root+1"
		}
		hibernate {
			show_sql = true
		}
    }		
    
    test {
        dataSource {
            dbCreate = "create-drop"
            url = "jdbc:mysql://localhost:3306/taylors"
			username = "root"
			password = "root+1"
        }
    }
    production {
        dataSource {
		 username = "FAKEUSERNAME"
		 password = "FAKEPASSWORD"
		 pooled = true
		 dbCreate = "update"
		 driverClassName = "com.mysql.jdbc.Driver"
		 url = "jdbc:mysql://xxxxxxxx.xxxxxxx.us-east-1.rds.amazonaws.com:3306/ebdb?user=FAKEUSERNAME&password=FAKEPASSWORD"
		 dialect = org.hibernate.dialect.MySQL5InnoDBDialect
		 properties {
		  validationQuery = "SELECT 1"
		  testOnBorrow = true
		  testOnReturn = true
		  testWhileIdle = true
		  timeBetweenEvictionRunsMillis = 1800000
		  numTestsPerEvictionRun = 3
		  minEvictableIdleTimeMillis = 1800000
		  }
		}
    }
}
