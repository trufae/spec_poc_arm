CFLAGS=-g -std=gnu99 -O2 -pthread -Wall

dump_sys_regs: dump_sys_regs.c sregs.S

ios:
	xcrun --sdk iphoneos cc -arch arm64 dump_sys_regs.c sregs.S -o dump_sys_regs-ios
	codesign -s - dump_sys_regs-ios
