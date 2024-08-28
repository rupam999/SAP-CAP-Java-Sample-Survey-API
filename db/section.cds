namespace com.rupam;

using { cuid } from '@sap/cds/common';
using com.rupam.Survey from './survey';
using com.rupam.Content from './content';

entity Section: cuid {
  survey: Association to Survey;
  sectionName: String(100);
  sequence: Integer;

  contents: Association to many Content on contents.section = $self;
}