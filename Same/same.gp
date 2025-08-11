name Same.app

longname "Same"

type    appl, process, single

class   SameProcessClass

appobj  SameApp

tokenchars   "same"
tokenid      16431

heapspace 111k

ifdef NOKIA
  platform n9000c
  library foam
else
  platform geos201
endif

library    geos
library    ui
library    ansic

resource   APPRESOURCE        ui-object
resource   INTERFACERESOURCE  ui-object
resource   ICONRESOURCE       ui-object
resource   GAMEENDRESOURCE    ui-object

resource   DIRKRESOURCE       ui-object
resource   JIRKARESOURCE      ui-object
resource   GERDRESOURCE       ui-object
resource   JOERGRESOURCE      ui-object
resource   MARCUSRESOURCE     ui-object
resource   LYSLERESOURCE      ui-object
resource   FALKRESOURCE       ui-object
resource   JENSRESOURCE       ui-object
