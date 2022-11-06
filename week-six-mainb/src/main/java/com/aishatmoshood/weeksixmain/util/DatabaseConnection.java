package com.aishatmoshood.weeksixmain.util;

import com.zaxxer.hikari.HikariDataSource;

import javax.sql.DataSource;
import java.sql.Connection;

public enum DatabaseConnection {
    INSTANCE;

    public DataSource getDataSource() {
        HikariDataSource dataSource = new HikariDataSource();
        dataSource.setDriverClassName("com.mysql.cj.jdbc.Driver");
        dataSource.setJdbcUrl("jdbc:mysql://localhost:3306/facebook_clonedb?serverTimezone=UTC");
        dataSource.setUsername("root");
        dataSource.setPassword("Jxpbzuoiyt$7");

        return dataSource;
    }

    public boolean isConnectionValid() {
        DataSource dataSource = getDataSource();

        try(Connection connection = dataSource.getConnection()){
            return connection.isValid(0);
        } catch(Exception e){
            System.out.println(e.getMessage());
        }

        return false;
    }
}
