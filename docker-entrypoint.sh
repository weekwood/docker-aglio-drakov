#!/bin/bash

cd /app

aglio -i ${BLUEPRINT_TOOLS_DOC_INDEX} --theme-template ${BLUEPRINT_TOOLS_THEME_TEMPLATE} --theme-variables ${BLUEPRINT_TOOLS_THEME_VARIABLES} -s -h 0.0.0.0 -p 3000 &
drakov -f ${BLUEPRINT_TOOLS_DOC_INDEX} -p 3001 --public