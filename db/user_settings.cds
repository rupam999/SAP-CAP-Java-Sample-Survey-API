namespace com.rupam;

using com.rupam.Users from './users';

entity UserSettings {
  key user: Association to Users;
  primaryColor: String(10);
  secondaryColor: String(10);
  logoURL: String(100);
}