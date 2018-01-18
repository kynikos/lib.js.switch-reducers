# This file is part of switch-reducers
# Copyright (C) 2018-present Dario Giovannetti <dev@dariogiovannetti.net>
# Licensed under MIT
# https://github.com/kynikos/switch-reducers/blob/master/LICENSE


module.exports = (getControlVar, reducersMap) ->
    (args...) ->
        reduce = reducersMap[getControlVar(args...)]
        if reduce?
            return reduce(args...)
        return null
