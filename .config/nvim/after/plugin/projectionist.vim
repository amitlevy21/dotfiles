let g:projectionist_heuristics = {
      \   '*': {
      \     '*.c': {
      \       'alternate': '{}.h',
      \       'type': 'source'
      \     },
      \     '*.h': {
      \       'alternate': '{}.c',
      \       'type': 'header'
      \     },
      \     '*.js': {
      \       'alternate': [
      \         '{dirname}/{basename}.test.js',
      \         '{dirname}/__tests__/{basename}-test.js',
      \         '{dirname}/__tests__/{basename}-mocha.js'
      \       ],
      \       'type': 'source'
      \     },
      \     '*.test.js': {
      \       'alternate': '{basename}.js',
      \       'type': 'test',
      \     },
      \     '**/__tests__/*-mocha.js': {
      \       'alternate': '{dirname}/{basename}.js',
      \       'type': 'test'
      \     },
      \     '**/__tests__/*-test.js': {
      \       'alternate': '{dirname}/{basename}.js',
      \       'type': 'test'
      \     },
      \     '**/*_test.py': {
      \       'alternate': [
      \         '**/{}.py'
      \       ],
      \       'type': 'test'
      \     },
      \     '**/*.py': {
      \       'alternate': [
      \         '{}_test.py',
      \         '**/test/{}.py',
      \       ],
      \       'type': 'source'
      \     },
      \     '**/*_test.go': {
      \       'alternate': '**/{}.go',
      \       'type': 'test'
      \     },
      \     '**/*.go': {
      \       'alternate': [
      \         '{}_test.go',
      \         '**/test/{}_test.go'
      \       ],
      \       'type': 'source'
      \     }
      \   }
      \ }

