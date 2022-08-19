VAR=hello
VAR2=world
VAR3=${VAR2:ld=th it}

merry:
	@echo ${VAR}

fun: merry
	@echo ${VAR2} is $@ and $<

hay:
	@echo ${VAR3}