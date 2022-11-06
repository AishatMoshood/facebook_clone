package com.aishatmoshood.weeksixmain.models;

import com.aishatmoshood.weeksixmain.enums.Gender;
import lombok.*;

import java.sql.Timestamp;
import java.time.LocalDate;

@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
@ToString

public class User {
    private int id;
    private String firstName;
    private String lastName;
    private String email;
    private String password;
    private String dob;
    private String gender;
    private LocalDate date_created;
}
