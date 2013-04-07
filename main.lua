-- Copyright (c) 2013 Alexander Harkness

-- Permission is hereby granted, free of charge, to any person obtaining a
-- copy of this software and associated documentation files (the
-- "Software"), to deal in the Software without restriction, including
-- without limitation the rights to use, copy, modify, merge, publish,
-- distribute, sublicense, and/or sell copies of the Software, and to
-- permit persons to whom the Software is furnished to do so, subject to
-- the following conditions:

-- The above copyright notice and this permission notice shall be included
-- in all copies or substantial portions of the Software.

-- THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS
-- OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
-- MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
-- IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
-- CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
-- TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
-- SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

-- Configuration

PREFERREDPLUGIN = nil -- What plugin would you like to use. If this is not set, then whatever's there is chosen.

-- Globals

PLUGIN = {}
LOGPREFIX = ""
APIVER = 1
EPLUG = {}

-- Plugin Start

function Initialize( Plugin )

        PLUGIN = Plugin
        PluginManager = cRoot:Get():GetPluginManager()

        Plugin:SetName( "EconAPI" )
        Plugin:SetVersion( 1 ) -- Yeah, v1 plugins FTW!

	LOGPREFIX = "["..Plugin:GetName().."] "

	-- Economy Plugin Setup

	-- Finishing Up

	LOGINFO( LOGPREFIX .. "Plugin v" .. Plugin:GetVersion() .. " Enabled!" )
        return true

end

function OnDisable()
	LOGINFO( LOGPREFIX .. "Plugin Disabled!" )
end
