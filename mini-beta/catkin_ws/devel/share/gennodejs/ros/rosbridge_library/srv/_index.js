
"use strict";

let TestRequestOnly = require('./TestRequestOnly.js')
let AddTwoInts = require('./AddTwoInts.js')
let TestRequestAndResponse = require('./TestRequestAndResponse.js')
let TestMultipleRequestFields = require('./TestMultipleRequestFields.js')
let TestNestedService = require('./TestNestedService.js')
let TestMultipleResponseFields = require('./TestMultipleResponseFields.js')
let TestArrayRequest = require('./TestArrayRequest.js')
let SendBytes = require('./SendBytes.js')
let TestResponseOnly = require('./TestResponseOnly.js')
let TestEmpty = require('./TestEmpty.js')

module.exports = {
  TestRequestOnly: TestRequestOnly,
  AddTwoInts: AddTwoInts,
  TestRequestAndResponse: TestRequestAndResponse,
  TestMultipleRequestFields: TestMultipleRequestFields,
  TestNestedService: TestNestedService,
  TestMultipleResponseFields: TestMultipleResponseFields,
  TestArrayRequest: TestArrayRequest,
  SendBytes: SendBytes,
  TestResponseOnly: TestResponseOnly,
  TestEmpty: TestEmpty,
};
