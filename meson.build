project('libuthash','c')

lib_headers = '''
	src/utarray.h
	src/uthash.h
	src/utlist.h
	src/utringbuffer.h
	src/utstring.h
'''.split()

lib_includes = include_directories('src')

if meson.is_subproject()
	libuthash_dep = declare_dependency(
		include_directories: lib_includes)
else
	install_headers(lib_headers)

	pkgconfig = import('pkgconfig')
	pkgconfig.generate(name: 'uthash', description: 'uthash')
endif
