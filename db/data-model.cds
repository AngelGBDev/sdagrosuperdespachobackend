
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
  Username : String(150);
  createdAt: DateTime;
  project: Association to one Projects;
}

@sap.persistence.skip
entity ZusuarioApp: cuid {
  ZusuarioApp: String(150);
  WerksLogist: String(150);
  Lgort: String(150);
  Msgno: String(150);
  Msgv1: String(150);
}

@sap.persistence.skip
entity DatosUsuarios: cuid {
  uname: String(150);
  nombreCompleto: String(150);
  email: String(150);
}

@sap.persistence.skip
entity CsCentros: cuid {
  WerksLogist: String(150);
  Name1: String(150);
  almacenes: Association to many CsAlmacen on almacenes.centro = $self;
}

@sap.persistence.skip
entity CsAlmacen: cuid {
  Lgort: String(150);
  Lgobe: String(150);
  WerksLogist: String(150);
  centro: Association to one CsCentros;
}