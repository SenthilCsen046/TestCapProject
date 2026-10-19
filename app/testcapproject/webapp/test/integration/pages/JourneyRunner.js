sap.ui.define([
    "sap/fe/test/JourneyRunner",
	"testcapprojectnamespace/testcapproject/test/integration/pages/TestCapProjectShopList.gen",
	"testcapprojectnamespace/testcapproject/test/integration/pages/TestCapProjectShopObjectPage.gen"
], function (JourneyRunner, TestCapProjectShopListGenerated, TestCapProjectShopObjectPageGenerated) {
    'use strict';

    const runner = new JourneyRunner({
        launchUrl: sap.ui.require.toUrl('testcapprojectnamespace/testcapproject') + '/test/flp.html#app-preview',
        pages: {
			onTheTestCapProjectShopListGenerated: TestCapProjectShopListGenerated,
			onTheTestCapProjectShopObjectPageGenerated: TestCapProjectShopObjectPageGenerated
        },
        async: true
    });

    return runner;
});

