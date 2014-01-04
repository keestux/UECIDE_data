name=Cosa
description=Cosa: An Object-Oriented Platform for Arduino Programming.
compiler=avr-gcc

core.path=api
core.flags=-DF_CPU=${build.f_cpu}::-DARDUINO=${core.version}::-D${board}
core.header=Arduino.h
core.version=1
core.revision=%REV%

family=avr

library.path=libraries
examples.path=examples

board=_UNKNOWN_BOARD_

upload.arduino.command.linux_amd64=${core.root}/tools/linux64/avrdude::-V::-p${build.mcu}::-P${port}::-b${upload.speed}::-C${core.root}/tools/linux64/avrdude.conf::-c${upload.protocol}::-Uflash:w:${build.path}/${filename}.hex:i::${verbose}
upload.arduino.command.linux_i386=${core.root}/tools/linux32/avrdude::-V::-p${build.mcu}::-P${port}::-b${upload.speed}::-C${core.root}/tools/linux32/avrdude.conf::-c${upload.protocol}::-Uflash:w:${build.path}/${filename}.hex:i::${verbose}
upload.arduino.command.macosx=${core.root}/tools/macosx/avrdude::-V::-p${build.mcu}::-P${port}::-b${upload.speed}::-C${core.root}/tools/macosx/avrdude.conf::-c${upload.protocol}::-Uflash:w:${build.path}/${filename}.hex:i::${verbose}
upload.arduino.command.windows=${core.root}/tools/windows/avrdude::-V::-p${build.mcu}::-P${port}::-b${upload.speed}::-C${core.root}/tools/windows/avrdude.conf::-c${upload.protocol}::-Uflash:w:${build.path}/${filename}.hex:i::${verbose}
upload.arduino.verbose=-v
upload.arduino.quiet=-q::-q
upload.arduino.dtr=yes
upload.arduino.rts=yes
upload.arduino.name=Upload direct to an Arduino board
upload.protocol=arduino

sketch.upload=arduino
