# Kernel module object files
obj-m := main.o

# Define the source directory
SRC := $(shell pwd)

# Default target to build the kernel module
all:
	$(MAKE) -C $(KERNEL_SRC) M=$(SRC)

# Install the kernel module
modules_install:
	$(MAKE) -C $(KERNEL_SRC) M=$(SRC) modules_install

# Clean build artifacts
clean:
	rm -f *.o *~ core .depend .*.cmd *.ko *.mod.c
	rm -f Module.markers Module.symvers modules.order
	rm -rf .tmp_versions Modules.symvers

# Install other bundled files (e.g., mtwifi and pa_wifi)

