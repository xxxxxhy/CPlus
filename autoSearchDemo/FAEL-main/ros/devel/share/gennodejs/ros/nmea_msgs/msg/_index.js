
"use strict";

let Gpgsa = require('./Gpgsa.js');
let Gprmc = require('./Gprmc.js');
let Gpgst = require('./Gpgst.js');
let Sentence = require('./Sentence.js');
let Gpgsv = require('./Gpgsv.js');
let Gpgga = require('./Gpgga.js');
let GpgsvSatellite = require('./GpgsvSatellite.js');

module.exports = {
  Gpgsa: Gpgsa,
  Gprmc: Gprmc,
  Gpgst: Gpgst,
  Sentence: Sentence,
  Gpgsv: Gpgsv,
  Gpgga: Gpgga,
  GpgsvSatellite: GpgsvSatellite,
};
