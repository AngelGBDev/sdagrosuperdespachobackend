using db from '../db/data-model';

service PublicService {
    entity Projects                     as projection on db.Projects;
    entity Votes                        as projection on db.Votes;
    entity DatosUsuariosSet             as projection on db.DatosUsuarios;
    entity CsCentrosSet                 as projection on db.CsCentros;
    entity CsAlmacenSet                 as projection on db.CsAlmacen;
    entity Contingencia                 as projection on db.Contingencia;
    entity DespConsTransportistaSet     as projection on db.DespConsTransportista;
}