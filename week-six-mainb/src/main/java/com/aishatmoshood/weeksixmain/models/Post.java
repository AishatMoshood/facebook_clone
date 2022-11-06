package com.aishatmoshood.weeksixmain.models;

import lombok.*;

import java.time.LocalDate;

@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
@ToString

public class Post {
    private int id;
    private int userId;
    private String post_title;
    private String post_body;
    private LocalDate createdAt;
}
