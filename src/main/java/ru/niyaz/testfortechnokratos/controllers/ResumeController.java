package ru.niyaz.testfortechnokratos.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import ru.niyaz.testfortechnokratos.models.Resume;
import ru.niyaz.testfortechnokratos.services.ResumeService;

import java.util.NoSuchElementException;

@Controller
public class ResumeController {
    ResumeService resumeService;

    public ResumeController(ResumeService resumeService) {
        this.resumeService = resumeService;
    }

    @GetMapping("/edit/{id}")
    public String getEditPage(@PathVariable String id, Model model) {
        model.addAttribute("id", id);
        return "edit_resume";
    }

    @GetMapping("/save/")
    public String getSavePage() {
        return "save_resume";
    }

    @GetMapping("/")
    public String getAllResumes(Model model) {
        model.addAttribute("resumes", resumeService.findAll());
        return "resumes";
    }

    @GetMapping("/resume/{id}")
    public String getResume(@PathVariable String id, Model model) {
        try {
            model.addAttribute("resume", resumeService.findById(id));
        } catch (NoSuchElementException e) {
            return "redirect:/";
        }
        return "resume";
    }

    @PostMapping("/save/")
    public String saveResume(String firstName, String lastName, String patronymic, String skillList, String workExperience,
                             String contacts) {
        Resume resume = Resume.builder()
                .firstName(firstName)
                .lastName(lastName)
                .patronymic(patronymic)
                .skillList(skillList)
                .workExperience(workExperience)
                .contacts(contacts).build();
        resumeService.save(resume);
        return "redirect:/";
    }

    @PostMapping("/edit/")
    public String editResume(String id, String firstName, String lastName, String patronymic,
                             String skillList, String workExperience, String contacts) {
        System.out.println(id);
        Resume resume = Resume.builder()
                .firstName(firstName)
                .lastName(lastName)
                .patronymic(patronymic)
                .skillList(skillList)
                .workExperience(workExperience)
                .contacts(contacts).build();
        resumeService.edit(id, resume);
        return "redirect:/";
    }

    @GetMapping("/delete/{id}")
    public String deleteResume(@PathVariable String id) {
        resumeService.delete(id);
        return "redirect:/";
    }
}
