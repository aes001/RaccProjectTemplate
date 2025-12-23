# DEPRECATED
# This is left in here as an example of how private cmake functions should be defined
# This file will be deleted once the project expands and we actually hae private
# cmake functions


# function(_RACC_TARGET_ENABLE_ASAN target enable)
# 	target_compile_options(${target} PRIVATE "$<$<BOOL:${enable}>:-fsanitize=address>")
# 	target_link_options(${target} PRIVATE "$<$<BOOL:${enable}>:-fsanitize=address>")
# endfunction()

# function(_RACC_TARGET_ENABLE_UBSAN target enable)
# 	target_compile_options(${target} PRIVATE "$<$<BOOL:${enable}>:-fsanitize=undefined>")
# 	target_link_options(${target} PRIVATE "$<$<BOOL:${enable}>:-fsanitize=undefined>")
# endfunction()
