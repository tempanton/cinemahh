package cinema.utils;

import cinema.dao.UserDao;
import cinema.domain.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.stereotype.Service;

import java.util.HashSet;
import java.util.Set;

@Service
public class CUserDetailsService implements UserDetailsService {

    @Autowired
    private UserDao userDao;

    @Override
    @SuppressWarnings("unchecked")
    public UserDetails loadUserByUsername(String login) {
        User user = userDao.findByLogin(login);
        Set<GrantedAuthority> authorities = new HashSet();
        user.getRoles().forEach(role-> authorities.add(new SimpleGrantedAuthority(role.getName())));
        return new org.springframework.security.core.userdetails.User(user.getLogin(),
                user.getPassword(),
                true,
                true,
                true,
                true,
                authorities);
    }


}