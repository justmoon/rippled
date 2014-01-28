#!/usr/bin/env node
//
// bin/execute_contract.js
//
// This helper script lets you run a contract.
//
// Usage:
//
//   bin/execute_contract.js [seed] [template_id]
//
//
// Example:
//
//   bin/execute_contract.js masterpassphrase 0AB3F3BC433416B9BD4B8C6AE404AF1629AAD0C630E433AE9493F0701394983D
//

var fs = require('fs');
var ripple = require('../src/js');

if (process.argv.length !== 4) {
  console.log("Usage: bin/execute_contract.js [seed] [template_id]");
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
var template = process.argv[3];

if (!/^[0-9A-F]{64}$/i.test(template)) {
  console.error("Not a valid template ID: "+template);
  process.exit(1);
}

var tx_json = {
  "TransactionType": "Contract",
  "Account": ripple.Seed.from_json(seed).get_addr().to_json(),
  "TemplateID": template,
  // XXX: Need to calculate actual fee
  "Fee": "40000000"
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
