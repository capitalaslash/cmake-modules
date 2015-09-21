#include <iostream>
#include <libmesh/libmesh_version.h>

int main()
{
    std::cout << libMesh::get_libmesh_version() << std::endl;
    return 0;
}
