namespace com.rupam;

using { cuid } from '@sap/cds/common';
using com.rupam.Workspace from './workspace';
using com.rupam.Section from './section';

entity Survey: cuid {
  workspace: Association to Workspace;
  surveyName: String(100);
  assignee: array of String(100);

  sections: Association to Section on sections.survey = $self; 
}