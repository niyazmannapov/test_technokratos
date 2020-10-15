package ru.niyaz.testfortechnokratos.controllers;


import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import ru.niyaz.testfortechnokratos.dtos.ResumeDto;
import ru.niyaz.testfortechnokratos.models.Resume;
import ru.niyaz.testfortechnokratos.services.ResumeService;

import java.util.List;
import java.util.stream.Collectors;

@RestController
public class ResumeRestController {
    private final ResumeService resumeService;

    public ResumeRestController(ResumeService resumeService) {
        this.resumeService = resumeService;
    }

    @GetMapping("/restApi/resumes")
    @ResponseBody
    public List<ResumeDto> findAll() {
        return resumeService.findAll().stream().map(Resume::toResumeDto).collect(Collectors.toList());
    }

    @GetMapping("/restApi/resume/{id}")
    @ResponseBody
    public ResponseEntity<ResumeDto> get(@PathVariable String id) {
        return ResponseEntity.ok(Resume.toResumeDto(resumeService.findById(id)));
    }

    @PostMapping("/restApi/resume")
    public void save(@RequestBody ResumeDto resumeDto) {
        resumeService.save(Resume.fromResumeDto(resumeDto));
    }

    @DeleteMapping("/restApi/resume/{id}")
    public void delete(@PathVariable String id) {
        resumeService.delete(id);
    }

}
