package es.vallahackaton.domain.repository;

import com.seniorglez.functionalJava.monads.Result;
import es.vallahackaton.domain.model.STEAMGirl;
import java.util.List;

public interface SteamRepository {
    public Result<List<STEAMGirl>, String> getAll();
}
