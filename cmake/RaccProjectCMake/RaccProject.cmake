function(RACC_GENERATE_BUILD_POLICY)
	if (TARGET RACC_BUILD_POLICY)
		message("RACC_BUILD_POLICY already exists...")
		return()
	endif()

	set(target_name RACC_BUILD_POLICY)
	add_library(${target_name} INTERFACE)

	set(RACC_ENABLE_ASAN false CACHE BOOL "Enable address sanitizer")
	set(RACC_ENABLE_UBSAN false CACHE BOOL "Enable undefined behaviour sanitizer")

	target_compile_options(${target_name}
		INTERFACE
			"$<$<BOOL:${RACC_ENABLE_ASAN}>:-fsanitize=address>"
			"$<$<BOOL:${RACC_ENABLE_UBSAN}>:-fsanitize=undefined>"
	)
	target_link_options(${target_name}
		INTERFACE
			"$<$<BOOL:${RACC_ENABLE_ASAN}>:-fsanitize=address>"
			"$<$<BOOL:${RACC_ENABLE_UBSAN}>:-fsanitize=undefined>"
	)

	# This don't look like it worky??
	target_compile_features(${target_name}
		INTERFACE
			cxx_std_23
	)
endfunction()





function(RACC_DEFINE_EXECUTABLE_TARGET projectName)
	add_executable(${projectName} ${ARGN})

	target_link_libraries(${projectName}
		PRIVATE
			RACC_BUILD_POLICY
	)
endfunction()





function(RACC_DEFINE_LIBRARY_TARGET_STATIC projectName)
	add_library(${projectName} STATIC ${ARGN})

	target_link_libraries(${projectName}
		PRIVATE
			RACC_BUILD_POLICY
	)
endfunction()





function(RACC_DEFINE_LIBRARY_TARGET_SHARED projectName)
	add_library(${projectName} SHARED ${ARGN})

	target_link_libraries(${projectName}
		PRIVATE
			RACC_BUILD_POLICY
	)
endfunction()




