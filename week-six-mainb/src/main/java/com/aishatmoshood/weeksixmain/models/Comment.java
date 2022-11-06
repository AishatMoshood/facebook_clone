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

public class Comment {
    private int id;
    private int userId;
    private int postId;
    private String comment;
    private LocalDate created_at;
}
