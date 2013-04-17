#!/usr/bin/env node
//
// bin/create_template.js
//
// This helper script lets you add a contract template to the ledger.
//
// Usage:
//
//   bin/create_template.js [seed] [api_version] [binary]
//
//
// Example:
//
//   bin/create_template.js masterpassphrase 0 example.pexe
//

var fs = require('fs');
var ripple = require('../src/js');

if (process.argv.length !== 5) {
  console.log("Usage: bin/create_template.js [seed] [api_version] [binary]");
  process.exit(1);
}

var remote = ripple.Remote.from_config({
  trace: true,
  "trusted" : true,
  "websocket_ip" : "127.0.0.1",
  "websocket_port" : 5006,
  "websocket_ssl" : false,
  "local_signing" : true
});

var seed = process.argv[2];
var api_version = process.argv[3];
var filename = process.argv[4];

var binary = fs.readFileSync(filename, 'hex');

var tx_json = {
  "TransactionType": "TemplateCreate",
  "Account": ripple.Seed.from_json(seed).get_addr().to_json(),
  "ApiVersion": api_version,
  "Code": binary,
  // XXX: Need to calculate actual fee
  "Fee": "4000000000"
};

remote.on('connected', function () {
  var req = remote.request_submit(seed, tx_json);
  req.on('success', function (result) {
    console.log(result);
    process.exit(0);
  });
  req.on('error', function (err) {
    console.error(err);
    process.exit(1);
  });
  req.request();
});

remote.connect();
