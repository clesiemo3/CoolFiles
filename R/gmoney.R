# Writes a file using 'g$' as the separator value.

write.gmoney <- function(dat, sep="g$", fileEncoding="UTF-8", file="", row.names=F, ...) {
	if(!file=="" & !grepl("\\.",file)){
		file <- paste0(file,".g$")
	}
	write.table(x=dat, file=file, sep=sep, fileEncoding=fileEncoding, row.names=row.names, ...)
	print("g$")
}

read.gmoney <- function(file, sep="g$"){
	read.cool(file, sep)
}
