function! oscar#python#OpenBuildFile()
  let file = findfile('BUILD', '.;')
  call util#TryOpenFile(file)
endfunction

function! oscar#python#MakePants()
  let pattern = expand('%:h') . ':' . expand('%:t:r')
  call util#Topen()
  execute ':T engshare/bin/mkpantsenv oscar ' . pattern
endfunction

function! oscar#python#InstallDeps(target)
  call util#Topen()
  execute ':T ./engshare/bin/mkpantsenv oscar ' . a:target
endfunction

function! oscar#python#TargetGen()
  let pattern = fnamemodify(findfile('BUILD', '.;'), ':~:.:h') . '/*.py'
  call util#Topen()
  execute ':T ./pants target-gen -- ' . pattern
endfunction

function! oscar#python#BuildDeps()
  let pattern = expand('%:h') . ':' . expand('%:t:r')
  call util#Topen()
  execute ':T ./pants build-deps --build-deps-prune=True --virtualenv=oscar ' . pattern
endfunction

function! oscar#python#BuildDepsAll()
  call util#Topen()
  execute ':T ./engshare/bin/update-build-files'
endfunction

function! oscar#python#GenThrift()
  call util#Topen()
  execute ':T ./pants gen-thrift-py thrift/src::'
endfunction

function! oscar#python#GenProtobuf()
  call util#Topen()
  execute ':T ./pants gen-protobuf-py protobuf/src::'
endfunction
