##############################################################################
#
#       Copyright (c) Geoworks 1996 -- All Rights Reserved
#
# PROJECT:      Nokia 9000 Advanced PPP Settings
# FILE:         landline.gp
# AUTHOR:       Marcus Gr”ber
# DESCRIPTION:  Parameters file.
# RCS STAMP:
#       $Id: $
#
##############################################################################

name            landline.app
longname        "Advanced PPP Settings"
type            appl, process, single

class           LandlineProcessClass
appobj          LandlineApp

tokenchars      "LAND"
tokenid         16424
#
# Libraries
#
library geos
library ui
library ansic
library foam
library accpnt
#
# Heapspace required
#
heapspace 28k
#
# Resources
#
resource APPRESOURCE                    ui-object
resource INTERFACE                      ui-object
resource MESSAGES                       lmem read-only shared
#
# Export any new classes.
#
