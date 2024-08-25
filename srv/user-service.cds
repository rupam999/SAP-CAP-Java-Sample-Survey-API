using com.rupam as main;

using from '../db/users';

service UserService {
  entity Users as projection on main.Users;
}