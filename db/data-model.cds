using { cuid } from '@sap/cds/common';

namespace db;

@sap.persistence.skip
entity Projects: cuid {
  name : String(150);
  language: String(150);
  repository: String;
  votes: Association to many Votes on votes.project = $self;
}

@sap.persistence.skip
entity Votes: cuid {
  username : String(150);
  createdAt: DateTime;
  project: Association to one Projects;
}