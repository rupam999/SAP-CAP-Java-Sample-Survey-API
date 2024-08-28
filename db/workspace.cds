namespace com.rupam;

using { cuid } from '@sap/cds/common';
using com.rupam.Users from './users';
using com.rupam.Survey from './survey';

entity Workspace: cuid {
  user: Association to Users;
  workspaceName: String(100);

  surveys: Association to many Survey on surveys.workspace = $self;
}