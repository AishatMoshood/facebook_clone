package com.aishatmoshood.weeksixmain.models;

import lombok.*;

@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
@ToString

public class Likes {
    private int id;
    private int userId;
    private int postId;
    private int commentId;
    private long noOfLikes;
}
