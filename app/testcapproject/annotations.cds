using TestCapProjectService as service from '../../srv/TestCapProjectService';
annotate service.TestCapProjectShop with @(
    UI.FieldGroup #GeneratedGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'Name',
                Value : Name,
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
                Label : 'Address',
                Value : Address,
            },
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
                Label : 'testCapProjectpDetail_ID',
                Value : testCapProjectpDetail_ID,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information Deatils',
            Target : '@UI.FieldGroup#GeneratedGroup',
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'Supplier Identification',
            ID : 'SupplierIdentification',
            Target : '@UI.Identification',
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
            $Type : 'UI.DataFieldForAction',
            Action : 'TestCapProjectService.fingerPrint',
            Label : '{i18n>FingerPrint}',
            Inline : true,
            Criticality : #Positive,
            IconUrl : 'sap-icon://biometric-thumb'
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
            Action : 'TestCapProjectService.EntityContainer/myaction',
            Label : '{i18n>Myaction}',
        },
        {
            $Type : 'UI.DataFieldForAnnotation',
            Target : '@UI.DataPoint#Category1',
            Label : 'Category',
        },
    ],
    UI.SelectionFields : [
        Name,
        Quality,
    ],
    UI.Identification : [
        {
            $Type : 'UI.DataField',
            Value : testCapProjectpDetail.ID,
            Label : 'ID',
        },
        {
            $Type : 'UI.DataField',
            Value : testCapProjectpDetail.Item,
            Label : 'Item',
        },
        {
            $Type : 'UI.DataField',
            Value : testCapProjectpDetail.Order,
            Label : 'Order',
        },
        {
            $Type : 'UI.DataField',
            Value : testCapProjectpDetail.Price,
            Label : 'Price',
        },
        {
            $Type : 'UI.DataFieldForAction',
            Action : 'TestCapProjectService.createDetails',
            Label : 'Create Details',
            Criticality : #Positive,
        },
    ],
    UI.HeaderInfo : {
        TypeImageUrl : 'sap-icon://car-rental',
        TypeName : '',
        TypeNamePlural : '',
    },
    UI.DataPoint #Category : {
        Value : Category,
        Visualization : #Rating,
        TargetValue : 5,
    },
    UI.DataPoint #Category1 : {
        Value : Category,
        Visualization : #Rating,
        TargetValue : 5,
    },
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
    Name @(
        Common.Label : 'Name',
        Common.ValueList : {
            $Type : 'Common.ValueListType',
            CollectionPath : 'TestCapProjectShop',
            Parameters : [
                {
                    $Type : 'Common.ValueListParameterInOut',
                    LocalDataProperty : Name,
                    ValueListProperty : 'Name',
                },
                {
                    $Type : 'Common.ValueListParameterDisplayOnly',
                    ValueListProperty : 'ID',
                },
                {
                    $Type : 'Common.ValueListParameterDisplayOnly',
                    ValueListProperty : 'Address',
                },
            ],
        },
        Common.ValueListWithFixedValues : false,
    )
};

annotate service.TestCapProjectShop with {
    Quality @Common.Label : 'Quality'
};

