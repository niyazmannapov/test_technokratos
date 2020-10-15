package ru.niyaz.testfortechnokratos.models;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Document;
import ru.niyaz.testfortechnokratos.dtos.ResumeDto;


@Data
@AllArgsConstructor
@NoArgsConstructor
@Builder
@Document
public class Resume {
    @Id
    private String id;
    private String firstName = "";
    private String lastName = "";
    private String patronymic = "";
    private String skillList = "";
    private String workExperience = "";
    private String contacts = "";

    public static Resume fromResumeDto(ResumeDto resumeDto) {
        return Resume.builder()

                .id(resumeDto.getId())
                .workExperience(resumeDto.getWorkExperience())
                .firstName(resumeDto.getFirstName())
                .lastName(resumeDto.getLastName())
                .patronymic(resumeDto.getPatronymic())
                .skillList(resumeDto.getSkillList())
                .contacts(resumeDto.getContacts())
                .build();
    }

    public static ResumeDto toResumeDto(Resume resume) {
        return ResumeDto.builder()
                .id(resume.getId())
                .workExperience(resume.getWorkExperience())
                .firstName(resume.getFirstName())
                .lastName(resume.getLastName())
                .patronymic(resume.getPatronymic())
                .skillList(resume.getSkillList())
                .build();
    }

}
