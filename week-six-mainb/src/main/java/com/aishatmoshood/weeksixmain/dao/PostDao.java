package com.aishatmoshood.weeksixmain.dao;

import com.aishatmoshood.weeksixmain.dto.PostDto;
import com.aishatmoshood.weeksixmain.dto.UserDto;
import com.aishatmoshood.weeksixmain.models.Post;
import com.aishatmoshood.weeksixmain.models.User;

public interface PostDao {

    Post createPost(PostDto postDto, User user);

   boolean isEmailExist(String email);
}
