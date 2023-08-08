namespace com.capnode;

entity Producer {
    key ID      : Integer;
    name        : String(100);
    nationality : Composition of many Nationality;
}

entity Products {
    key ID      : Integer;
    title       : Title;
    descr       : Text;
    price       : Integer;
    stock       : Integer;
    producer    : Composition of Producer;
    contact : Association to one Contacts;
}

type Title : String(100);

type Text  : String(1000);

entity Nationality {
    key ID      : Integer;
    country     : String;
}

entity Contacts {
    KEY ID : Integer;
    name : String;
    phone : String;
    locality : String;
    country : String;
    address : String;
}