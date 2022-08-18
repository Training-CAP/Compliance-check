service evalautionService {

    entity evaluation {

        key ID : UUID;

        name : String;

        brief:String;

        sellingmarket:String;

        valid_from:Date;

        valid_to:Date;

        status:String;



    }

}