package es.vallahackaton.infra.controllers;

import com.seniorglez.functionalJava.monads.Result;
import es.vallahackaton.domain.model.STEAMGirl;
import es.vallahackaton.domain.repository.SteamRepository;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.List;

public class SteamRepositoryImpl implements SteamRepository {
    @Override
    public Result<List<STEAMGirl>, String> getAll() {
            String query = "";
            try(Connection connection = getConnection()) {
                BeanListHandler<STEAMGirl> beanListHandler = new BeanListHandler<>(STEAMGirl.class);
                QueryRunner runner = new QueryRunner();
                List<STEAMGirl> girlList = runner.query(connection, query, beanListHandler);
                return new Result.Success<List<STEAMGirl>, String>(girlList);
            } catch (Exception e) {
                return new Result.Failure<List<STEAMGirl>, String>(e.getMessage());
            }
    }

    private Connection getConnection() throws SQLException {
       return DriverManager.getConnection("jdbc:mysql://db/myschema","root", "P@ssw0rd");
    }
}
