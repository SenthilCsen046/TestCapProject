const cds = require('@sap/cds')
module.exports = cds.service.impl(async function (srv) {

/*
    srv.on('READ', 'TestCapProjectShop', async (req) => {
        console.log("this is on handler.")
    })
    srv.before('READ', 'TestCapProjectShop', async (req) => {
        console.log("this is on Before handler.")
    })
    srv.after('READ', 'TestCapProjectShop', async (req) => {
        console.log("this is on After handler.")
    })
    srv.on('myfunction', async (req) => {
        let result = req.data.name;

        return result
    })
*/
    srv.on('createDetails', async (req) => {
        let result = req.data.name;

        return result
    })

    srv.on('myaction', async (req) => {
        let result = req.data.name;

        return result
    })

})