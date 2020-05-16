function! oscar#js#GenProtobuf()
  call util#Topen()
  execute ':T ./pants gen-protobuf-javascript protobuf/src::'
endfunction

function! oscar#js#RequireToImport()
  call util#Topen()
  execute ':T npm run update-require-to-import ' . util#ExpandRelative('%')
endfunction

function! oscar#js#OrganizeImports()
  call util#Topen()
  execute ':T npm run organize-imports ' . util#ExpandRelative('%')
endfunction

function! oscar#js#TypeConnect()
  call util#Topen()
  execute ':T npm run type-connect ' . util#ExpandRelative('%')
endfunction
