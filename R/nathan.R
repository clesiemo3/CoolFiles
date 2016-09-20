# Writes a file using 'nathan' as the separator value.
# Prints a random nathanism

random_nathan <- function(){
	rand <- sample(1:5, 1)
	if(rand==1){
		print("Have you considered rewriting it in Go?")
	} else if(rand==2){
		print("Your early morning inspiration https://www.youtube.com/watch?v=RYMH3qrHFEM")
	} else if(rand==3){
		print(":fastparrot:")
	} else if(rand==4){
		print("Always remember to include a favicon")
	} else if(rand==5){
		print("Why does R use 1 indexing?")
	}
}


write.nathan <- function(dat, sep="nathan", fileEncoding="UTF-8", file="", row.names=F, ...) {
	if(!file=="" & !grepl("\\.", file)){
		file <- paste0(file,".nathan")
	}
	write.table(x=dat, file=file, sep=sep,
				fileEncoding=fileEncoding, row.names=row.names,
				quote=F, ...)
	random_nathan()
}

read.nathan <- function(file, sep="nathan"){
	random_nathan()
	read.cool(file, sep)
}
