package ru.niyaz.testfortechnokratos.repositories;


import org.springframework.data.mongodb.repository.MongoRepository;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;
import ru.niyaz.testfortechnokratos.models.Resume;

@Repository
public interface ResumesRepository extends MongoRepository<Resume, String> {
}
