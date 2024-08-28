using com.rupam as main;

using from '../db/workspace';
using from '../db/survey';
using from '../db/section';
using from '../db/content';
using from '../db/user_results';

service SurveyService {
  entity Workspace as projection on main.Workspace;
  entity Survey as projection on main.Survey;
  entity Section as projection on main.Section;
  entity Content as projection on main.Content;
  entity UserResults as projection on main.UserResults;
}