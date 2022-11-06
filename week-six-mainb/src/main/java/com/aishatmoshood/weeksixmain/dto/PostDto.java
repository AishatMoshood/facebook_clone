package com.aishatmoshood.weeksixmain.dto;

import lombok.Data;

import java.time.LocalDate;

@Data

public class PostDto {
    private int id;
    private final int userId;
    private final String post_title;
    private final String post_body;
    private final LocalDate createdAt;
}
