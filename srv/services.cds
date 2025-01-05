using { sap.capire.incidents as my } from '../db/schema';

/**
 * Service used by support personell, i.e. the incidents' 'processors'.
 */

 @requires : 'support'
service ProcessorService @(path: 'Processor') { 
    @odata.draft.enabled
    entity Incidents as projection on my.Incidents;

    @readonly
    entity Customers as projection on my.Customers;
}

/**
 * Service used by administrators to manage customers and incidents.
 */
 @requires : 'admin'
service AdminService @(path: 'Admin') {
    entity Customers as projection on my.Customers;
    entity Incidents as projection on my.Incidents;
    }
