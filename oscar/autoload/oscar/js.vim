function! oscar#js#GenProtobuf()
  call util#Topen()
  execute ':T ./pants gen-protobuf-javascript protobuf/src::'
endfunction
