
using { cuid } from '@sap/cds/common';

namespace db;

entity Projects: cuid {
  name : String(150);
  language: String(150);
  repository: String;
  votes: Association to many Votes on votes.project = $self;
}

entity Votes: cuid {
  Username : String(150);
  createdAt: DateTime;
  project: Association to one Projects;
}

// @sap.persistence.skip
entity ZusuarioApp: cuid {
  ZusuarioApp: String;
  WerksLogist: String;
  Lgort: String;
  Msgno: String;
  Msgv1: String;
}

// @sap.persistence.skip
entity DatosUsuarios: cuid {
  uname: String;
  nombreCompleto: String;
  email: String;
}

// @sap.persistence.skip
entity CsCentros: cuid {
  WerksLogist: String;
  Name1: String;
  almacenes: Association to many CsAlmacen on almacenes.centro = $self;
}

// @sap.persistence.skip
entity CsAlmacen: cuid {
  Lgort: String;
  Lgobe: String;
  WerksLogist: String;
  centro: Association to one CsCentros;
}