#####################################################################
#
# PROJECT:      Nokia Sample Applications
# MODULE:       LOLA
# FILE:         LOLA.gp
#
#####################################################################
#
# Permanent name: This is required by Glue to set the permanent name
# and extension of the geode. The permanent name of a library is what
# goes in the imported library table of a client geode (along with the
# protocol number). It is also what Swat uses to name the patient.
#
name     lola.app
#
# Long filename: this name can displayed by GeoManager. "EC " is prepended to
# this when the error-checking version is linked by Glue.
#
longname "Little Operator Logo Assistant"
#
# Specify geode type: This geode is an application, and will have its
# own process (thread).
#
type   appl, process, single
#
# Specify class name for application thread. Messages sent to the application
# thread (aka "process" when specified as the output of a UI object) will be
# handled by the LOLAProcessClass, which is defined in LOLA.goc.
#
class  LOLAProcessClass
#
# Specify application object. This is the object that serves as the top-level
# UI object in the application. See LOLA.goc.
#
appobj LOLAApp
#
# Token: The four-letter name is used by GeoManager to locate the
# icon for this application in the token database. The tokenid
# number corresponds to the manufacturer ID of the program's author
# for uniqueness of the token.
#
tokenchars "LOLA"
tokenid    16424
#
# Heapspace: This is roughly the non-discardable memory usage
# of the application and any transient libraries that it depends on,
# plus an additional amount for thread activity. To find the heapspace
# for an application, use the Swat "heapspace" command.
#
heapspace 80k
#
# Libraries: list which libraries are used by the application.
#
platform n9110v10

library geos
library ui
library ansic
library foam
library viewer
library mailbox
library smreg
library imagev
#
# Resources: list all resource blocks which are used by the application whose
# allocation flags can't be inferred by Glue. Usually this is needed only for
# object blocks, fixed code resources, or data resources that are read-only.
# Standard discardable code resources do not need to be mentioned.
#
resource APPRESOURCE ui-object
resource INTERFACE   ui-object

export LOLAOpenControlClass
export LOLATextClass
