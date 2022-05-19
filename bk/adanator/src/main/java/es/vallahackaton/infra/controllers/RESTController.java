package es.vallahackaton.infra.controllers;

import com.google.gson.Gson;
import com.seniorglez.functionalJava.monads.Result;
import es.vallahackaton.application.useCases.getAllGirls.GetAllGirls;
import es.vallahackaton.domain.model.STEAMGirl;

import java.util.List;

import static spark.Spark.*;


public class RESTController {

    private final Gson gson;

    public RESTController() {
        this.gson = new Gson();
        sparkConfiguration();
        mapEndpoints();
    }

    private void sparkConfiguration() {
        notFound((req, res) -> {
            res.type("application/json");
            return "{\"message\":\"Not found\"}";
        });
        internalServerError((req, res) -> {
            res.type("application/json");
            return "{\"message\":\"Internal Server Error\"}";
        });
        threadPool(8, 3, 30000);
    }

    private void mapEndpoints() {

        get("/", (request,response)->{
            response.status(200);
            response.type("application/json");
            return "{\r\n  \"msg\": \"hi\"\r\n}";
        });

        get("/get_all", (request,response) -> {
            response.type("application/json");
            Result<List<STEAMGirl>, String> result = new GetAllGirls(new SteamRepositoryImpl()).execute();
            if( result instanceof Result.Failure ) {
                response.status(500);
                Result.Failure<List<STEAMGirl>, String> failure = (Result.Failure<List<STEAMGirl>, String>) result;
                return "{\r\n  \"msg\": \""+ failure.getError() +"\"\r\n}";
            } else if (result instanceof Result.Success) {
                response.status(200);
                Result.Success<List<STEAMGirl>, String> success = (Result.Success<List<STEAMGirl>, String>) result;
                return gson.toJson(success.getValue());
            }
            response.status(500);
            return "{\r\n  \"msg\": \"wat\"\r\n}";
        });
    }

}
