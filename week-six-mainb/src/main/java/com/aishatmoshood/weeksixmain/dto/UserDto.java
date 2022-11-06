package com.aishatmoshood.weeksixmain.dto;

import com.aishatmoshood.weeksixmain.enums.Gender;
import lombok.*;

import java.time.LocalDate;

@Data

public class UserDto {
    private int id;
    private final String firstName;
    private final String lastName;
    private final String email;
    private final String password;
    private final String gender;
    private final String dob;
    private final LocalDate date_created;
}
