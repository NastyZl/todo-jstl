package ru.sber.demo.repo.user;

import ru.sber.demo.model.user.Role;
import ru.sber.demo.model.user.User;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

public class MemoryUserRepoImpl implements UserRepo {
    private final static List<User> USERS = new ArrayList<>();

    static {
        USERS.add(new User(1, "Nasty20", "123", LocalDate.of(1993, 10, 13), Role.ADMIN));
        USERS.add(new User(2, "Temych", "123", LocalDate.of(2000, 3, 15), Role.USER));
        USERS.add(new User(3, "NastyZl", "123", LocalDate.of(2001, 3, 30), Role.USER));

    }

    public int nextId() {
        return USERS.get(USERS.size() - 1).getId() + 1;
    }

    @Override
    public List<User> findAll() {
        return USERS;
    }

    @Override
    public boolean create(User user) {
        if (user == null) {
            return false;
        }
        return USERS.add(user);
    }

    @Override
    public Optional<User> findByLogin(String login) {
        return USERS.stream().filter(user -> user.getLogin().equals(login)).findFirst();
    }

    @Override
    public Optional<User> findById(String id) {
        return USERS.stream().filter(user -> user.getId() == Integer.parseInt(id)).findFirst();
    }

}
