package ru.niyaz.testfortechnokratos.services;

import ru.niyaz.testfortechnokratos.models.Resume;

import java.util.List;

public interface ResumeService {
    List<Resume> findAll();

    Resume findById(String id);

    void delete(String id);

    void save(Resume resume);

    void edit(String id, Resume resume);


}
