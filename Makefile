release:
	git submodule update --init
	cd RandomX && cmake . && make
	mkdir -p bin
	cd RandomX_CUDA && nvcc -arch=sm_35 -prec-div=true -prec-sqrt=true -o ../bin/randomx ../RandomX/librandomx.a kernel.cu

clean:
	cd RandomX && make clean
	rm -f bin/randomx
