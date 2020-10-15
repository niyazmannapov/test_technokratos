package ru.niyaz.testfortechnokratos.services;

import org.springframework.stereotype.Service;
import ru.niyaz.testfortechnokratos.models.Resume;
import ru.niyaz.testfortechnokratos.repositories.ResumesRepository;


import java.util.List;

@Service
public class ResumeServiceImpl implements ResumeService {
    private final ResumesRepository resumesRepository;

    public ResumeServiceImpl(ResumesRepository resumesRepository) {
        this.resumesRepository = resumesRepository;
    }

    @Override
    public List<Resume> findAll() {
        return resumesRepository.findAll();
    }

    @Override
    public Resume findById(String id) {
        return resumesRepository.findById(id).orElseThrow();
    }

    @Override
    public void save(Resume resume) {
        resumesRepository.save(resume);
        return;
    }


    @Override
    public void edit(String id, Resume resume) {
        Resume newResume = resumesRepository.findById(id).orElseThrow();
        if (resume.getFirstName() != null && !resume.getFirstName().isEmpty()) {
            newResume.setFirstName(resume.getFirstName());
        }
        if (resume.getLastName() != null && !resume.getLastName().isEmpty()) {
            newResume.setLastName(resume.getLastName());
        }
        if (resume.getPatronymic() != null && !resume.getPatronymic().isEmpty()) {
            newResume.setPatronymic(resume.getPatronymic());
        }
        if (resume.getWorkExperience() != null && !resume.getWorkExperience().isEmpty()) {
            newResume.setWorkExperience(resume.getWorkExperience());
        }
        if (resume.getSkillList() != null && !resume.getSkillList().isEmpty()) {
            newResume.setSkillList(resume.getSkillList());
        }
        if (resume.getContacts() != null && !resume.getContacts().isEmpty()) {
            newResume.setContacts(resume.getContacts());
        }
        resumesRepository.save(newResume);
    }

    public void delete(String id) {
        resumesRepository.deleteById(id);
    }

}
