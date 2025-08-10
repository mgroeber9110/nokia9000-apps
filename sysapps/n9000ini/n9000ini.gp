##############################################################################
#
# PROJECT:      Nokia INI Editing Tool
# FILE:         n9000ini.gp
# AUTHOR:       Marcus Groeber
# DESCRIPTION:  Parameters file.
#
##############################################################################

name            n9000ini.app
longname        "INI Editing Tool"
type            appl, process, single

class           TemplateProcessClass
appobj          TemplateApp

tokenchars      "N9kI"
tokenid         16424

#
# Libraries
#
library geos
library ui
library foam
library ansic

#
# Heapspace required
#
heapspace 15k

#
# Resources
#
resource APPRESOURCE                    ui-object
resource INTERFACE                      ui-object

#
# Export any new classes.
#

