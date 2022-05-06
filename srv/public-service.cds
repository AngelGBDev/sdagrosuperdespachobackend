using {csw} from '../db/schema';

@(requires : 'authenticated-user')
service PublicService {    

  @readonly
  entity Projects   as projection on csw.Projects;

  @readonly
  entity Votes      as projection on csw.Votes;

  @readonly
  entity UserScopes {
    key username : String;
        is_admin : Boolean;
  };
}