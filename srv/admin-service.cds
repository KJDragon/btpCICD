using { com.capnode as cap } from '../db/schema';

service AdminService {
    entity Products as projection on cap.Products;
    entity Producer as projection on cap.Producer;
    entity Nationality as projection on cap.Nationality;
    entity Contacts as projection on cap.Contacts;
}