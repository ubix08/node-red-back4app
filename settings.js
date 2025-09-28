module.exports = {
    uiPort: process.env.PORT || 1880,
    httpAdminRoot: '/admin',
    adminAuth: {
        type: "credentials",
        users: [{username: "admin", password: "password", permissions: "*"}]  // Change in production
    },
    flowFile: 'flows.json',
    functionGlobalContext: {}
};
