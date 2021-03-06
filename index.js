"use strict";

// Generated by CoffeeScript 2.5.1
(function () {
  // This file is part of switch-reducers
  // Copyright (C) 2018-present Dario Giovannetti <dev@dariogiovannetti.net>
  // Licensed under MIT
  // https://github.com/kynikos/switch-reducers/blob/master/LICENSE
  module.exports = function (getControlVar, reducersMap) {
    return function () {
      var reduce;
      reduce = reducersMap[getControlVar.apply(undefined, arguments)];
      if (reduce != null) {
        return reduce.apply(undefined, arguments);
      }
      return null;
    };
  };
}).call(undefined);