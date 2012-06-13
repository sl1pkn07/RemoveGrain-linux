LDFLAGS=
CXXFLAGS=-m32

RemoveGrain.so: RemoveGrain.o planar.o
	$(CXX) -shared $(CXXFLAGS) RemoveGrain.o planar.o $(LDFLAGS) -o RemoveGrain.so

planar.o: planar.cpp planar.h
	$(CXX) $(LDFLAGS) $(CXXFLAGS) planar.cpp -c
