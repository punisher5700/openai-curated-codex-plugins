import { LightningElement, api, wire } from 'lwc';
import { getRecord } from 'lightning/uiRecordApi';

const FIELDS = ['Account.Name'];

export default class ExampleComponent extends LightningElement {
    @api recordId;

    @wire(getRecord, { recordId: '$recordId', fields: FIELDS })
    wiredRecord;

    get record() {
        return this.wiredRecord.data;
    }

    get error() {
        return this.wiredRecord.error;
    }
}
