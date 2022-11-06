package com.aishatmoshood.weeksixmain.dao;

import com.aishatmoshood.weeksixmain.dto.UserDto;
import com.aishatmoshood.weeksixmain.models.User;
import lombok.NonNull;

import java.util.List;

public interface UserDao {

    User signUp(UserDto userDto);

    User isUserExist(String email, String password);

    List<User> getAllUsers();

    User getAUser(User user);
}
