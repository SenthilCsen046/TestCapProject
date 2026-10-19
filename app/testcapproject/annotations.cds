using TestCapProjectService as service from '../../srv/TestCapProjectService';
annotate service.TestCapProjectShop with @(
    UI.FieldGroup #GeneratedGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'Street',
                Value : Street,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Pincode',
                Value : Pincode,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Name',
                Value : Name,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Address',
                Value : Address,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Category',
                Value : Category,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Quality',
                Value : Quality,
            },
            {
                $Type : 'UI.DataField',
                Label : 'testCapProjectpDetail_ID',
                Value : testCapProjectpDetail_ID,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup',
        },
    ],
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'Name',
            Value : Name,
            @UI.Importance : #High,
        },
        {
            $Type : 'UI.DataField',
            Value : Address,
            Label : 'Address',
        },
        {
            $Type : 'UI.DataField',
            Value : Quality,
            Label : 'Quality',
        },
        {
            $Type : 'UI.DataField',
            Value : Category,
            Label : 'Category',
            Criticality : Category,
        },
        {
            $Type : 'UI.DataField',
            Value : Pincode,
            Label : 'Pincode',
        },
        {
            $Type : 'UI.DataFieldForAction',
            Action : 'TestCapProjectService.createDetails',
            Label : 'createDetails',
            Inline : true,
            Criticality : #Positive,
        },
        {
            $Type : 'UI.DataFieldForAction',
            Action : 'TestCapProjectService.fingerPrint',
            Label : '{i18n>FingerPrint}',
            Inline : true,
            Criticality : #Negative,
        },
    ],
    UI.SelectionFields : [
        Name,
        Quality,
    ],
);

annotate service.TestCapProjectShop with {
    testCapProjectpDetail @Common.ValueList : {
        $Type : 'Common.ValueListType',
        CollectionPath : 'TestCapProjectpDetails',
        Parameters : [
            {
                $Type : 'Common.ValueListParameterInOut',
                LocalDataProperty : testCapProjectpDetail_ID,
                ValueListProperty : 'ID',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'Order',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'Item',
            },
            {
                $Type : 'Common.ValueListParameterDisplayOnly',
                ValueListProperty : 'Price',
            },
        ],
    }
};

annotate service.TestCapProjectShop with {
    Name @Common.Label : 'Name'
};

annotate service.TestCapProjectShop with {
    Quality @Common.Label : 'Quality'
};

