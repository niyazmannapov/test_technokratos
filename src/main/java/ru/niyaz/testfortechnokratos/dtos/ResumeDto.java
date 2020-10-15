package ru.niyaz.testfortechnokratos.dtos;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.sql.Date;

@AllArgsConstructor
@NoArgsConstructor
@Data
@Builder
public class ResumeDto {
    private String id;
    private String firstName;
    private String lastName;
    private String patronymic;
    private String skillList;
    private String workExperience;
    private String contacts;

}
