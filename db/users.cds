namespace com.rupam;

using { managed } from '@sap/cds/common';
using com.rupam.UserSettings from './user_settings';

entity Users: managed {
  key email: String(100)              @title: '{i18n>email}'          @description: '{i18n>emailDescription}';
  userId: UUID                        @title: '{i18n>userId}'         @description : '{18n>userIdDescription}';
  fullName: String(100)               @title : '{i18n>fullName}'      @description : '{i18n>fullNameDescription}';
  password: String(100)               @title: '{i18n>password}'       @description: '{i18n>passwordDescription}';

  settings: Association to UserSettings on settings.user = $self;
}