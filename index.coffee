# Switch reducers
# Copyright (C) 2018 Dario Giovannetti <dev@dariogiovannetti.net>
#
# This file is part of React Helpers.
#
# React Helpers is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# React Helpers is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with React Helpers.  If not, see <http://www.gnu.org/licenses/>.


module.exports = (getControlVar, reducersMap) ->
    (args...) ->
        reduce = reducersMap[getControlVar(args...)]
        if reduce?
            return reduce(args...)
        return null
