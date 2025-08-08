#####################################################################
#
#
# PROJECT:      WOA Client Test
# MODULE:       WOATEST
# FILE:         WOATEST.prj
#
# AUTHOR:       Nokia 9000/9110 Development Environment
#
# REVISION HISTORY:
#       Name    Date            Description
#       ----    ----            -----------
#
# DESCRIPTION:
#
#
# RCS STAMP:
#
#
#####################################################################
#
# Permanent name: This is required by Glue to set the permanent name
# and extension of the geode. The permanent name of a library is what
# goes in the imported library table of a client geode (along with the
# protocol number). It is also what Swat uses to name the patient.
#
name     WOATEST.app
#
# Long filename: this name can displayed by GeoManager. "EC " is prepended to
# this when the error-checking version is linked by Glue.
#
longname "D2-SpeedProxy Einstellungen"
#
# Specify geode type: This geode is an application, and will have its
# own process (thread).
#
#//{{TYPE-GP
type   appl, process, single
#//}}TYPE-GP
#
# Specify class name for application thread. Messages sent to the application
# thread (aka "process" when specified as the output of a UI object) will be
# handled by the process class.
#
class  WOATESTProcessClass
#
# Specify application object. This is the object that serves as the top-level
# UI object in the application.
#
appobj WOATESTApp
#
# Token: The four-letter name is used by GeoManager to locate the
# icon for this application in the token database. The tokenid
# number corresponds to the manufacturer ID of the program's author
# for uniqueness of the token. Since this is a sample application, we
# use the manufacturer ID for the SDK, which is 8.
#
tokenchars "WOAT"
tokenid    11450
#
# Heapspace: This is roughly the non-discardable memory usage
# of the application and any transient libraries that it depends on,
# plus an additional amount for thread activity. To find the heapspace
# for an application, use the Swat "heapspace" command.
#
heapspace 8k
#
# Libraries: list which libraries are used by the application.
#
#//{{LIBRARIES-GP
library geos
library ui
library foam
library ansic
#//}}LIBRARIES-GP

#
# Resources: list all resource blocks which are used by the application whose
# allocation flags can't be inferred by Glue. Usually this is needed only for
# object blocks, fixed code resources, or data resources that are read-only.
# Standard discardable code resources do not need to be mentioned.
#
#//{{EXPORT-GP
export WOATESTVisContentClass
#//}}EXPORT-GP

#//{{RESOURCES-GP
resource APPRESOURCE ui-object
resource INTERFACE ui-object
#//{{RESOURCES BLOCK}} -- DO NOT ERASE --
#//{{END RESOURCES BLOCK}} -- DO NOT ERASE --
#//}}RESOURCES-GP

