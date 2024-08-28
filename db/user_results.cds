namespace com.rupam;

using { cuid } from '@sap/cds/common';
using com.rupam.Content from './content';
using com.rupam.Users from './users';

entity UserResults: cuid {
  user: Association to Users;
  content: Association to Content;
  values: array of String(100);
}