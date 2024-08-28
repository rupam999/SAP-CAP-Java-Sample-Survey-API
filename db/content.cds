namespace com.rupam;

using { cuid } from '@sap/cds/common';
using QuestionType from './common/enum';
using com.rupam.Section from './section';
using com.rupam.UserResults from './user_results';

entity Content: cuid {
  section: Association to Section;
  name: String(100);
  type: QuestionType;
  mandatory: Boolean default false;
  sequence: Integer;
  defaultValue: String(100);
  width: Integer default 100;
  helpText: String(100);
  values: array of String(100);

  userInputs: Association to many UserResults on userInputs.content = $self;
}