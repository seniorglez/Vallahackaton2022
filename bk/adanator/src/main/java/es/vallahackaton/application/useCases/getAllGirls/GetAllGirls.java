package es.vallahackaton.application.useCases.getAllGirls;

import com.seniorglez.functionalJava.monads.Result;
import es.vallahackaton.domain.model.STEAMGirl;
import es.vallahackaton.domain.repository.SteamRepository;

import java.util.List;

public class GetAllGirls {

    private SteamRepository repository;

    public GetAllGirls( SteamRepository repository) {
        this.repository = repository;
    }

    public Result<List<STEAMGirl>, String> execute() {
        return  repository.getAll();
    }
}
