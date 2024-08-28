using com.rupam as main;

using from '../db/users';
using from '../db/user_settings';

service UserService {
  entity Users as projection on main.Users;
  entity UserSettings as projection on main.UserSettings;
}