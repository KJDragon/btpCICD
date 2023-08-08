module.exports = async function (srv) {

    const { Products, Contacts } = srv.entities; 

    srv.after("READ", Products, async (response) => {
        if(!response) return;

        if(response.hasOwnProperty('contact') && response.contact.address === null) {
            const contact = await SELECT.one.from(Contacts, response.contact.ID, contact => {
                contact.ID, contact.locality, contact.country
            })

            response.contact.address = `${contact.country} ${contact.locality}`;

            await UPDATE(Contacts, response.contact.ID).with({address : response.contact.address});
        }
    })
}