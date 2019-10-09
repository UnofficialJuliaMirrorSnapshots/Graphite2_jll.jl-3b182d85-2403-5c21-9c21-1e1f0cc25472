# Autogenerated wrapper script for Graphite2_jll for aarch64-linux-gnu
export libgraphite2

## Global variables
PATH = ""
LIBPATH = ""
LIBPATH_env = "LD_LIBRARY_PATH"

# Relative path to `libgraphite2`
const libgraphite2_splitpath = ["lib", "libgraphite2.so"]

# This will be filled out by __init__() for all products, as it must be done at runtime
libgraphite2_path = ""

# libgraphite2-specific global declaration
# This will be filled out by __init__()
libgraphite2_handle = C_NULL

# This must be `const` so that we can use it with `ccall()`
const libgraphite2 = "libgraphite2.so.3"


"""
Open all libraries
"""
function __init__()
    global prefix = abspath(joinpath(@__DIR__, ".."))

    # Initialize PATH and LIBPATH environment variable listings
    global PATH_list, LIBPATH_list
    global libgraphite2_path = abspath(joinpath(artifact"Graphite2", libgraphite2_splitpath...))

    # Manually `dlopen()` this right now so that future invocations
    # of `ccall` with its `SONAME` will find this path immediately.
    global libgraphite2_handle = dlopen(libgraphite2_path)
    push!(LIBPATH_list, dirname(libgraphite2_path))

    # Filter out duplicate and empty entries in our PATH and LIBPATH entries
    filter!(!isempty, unique!(PATH_list))
    filter!(!isempty, unique!(LIBPATH_list))
    global PATH = join(PATH_list, ':')
    global LIBPATH = join(LIBPATH_list, ':')

    # Add each element of LIBPATH to our DL_LOAD_PATH (necessary on platforms
    # that don't honor our "already opened" trick)
    #for lp in LIBPATH_list
    #    push!(DL_LOAD_PATH, lp)
    #end
end  # __init__()

