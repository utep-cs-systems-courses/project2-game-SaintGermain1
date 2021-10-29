# makfile configuration
COMMON_OBJECTS  = 
CPU             = msp430g2553
CFLAGS          = -mmcu=${CPU} -I../h -L/opt/ti/msp430_gcc/include

#switch the compiler (for the internal make rules)
CC              = msp430-elf-gcc
AS              = msp430-elf-as

all: buzzer.elf 

#additional rules for files
buzzer.elf: ${COMMON_OBJECTS} stateMachines.o buzzer.o buzzerMain.o ../lib/libTimer.a
	${CC} ${CFLAGS} -o $@ $^

load: buzzer.elf
	msp430loader.sh  $^

clean: $^
	rm -f *.o *.elf

buzzer.o: buzzer.h
buzzerMain.o: buzzer.h
stateMachines.o: stateMachines.h buzzer.h
wdInterruptHandler.o: stateMachines.h
