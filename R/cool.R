read.cool <- function(file, sep){
	m <- do.call(rbind,strsplit(readLines(file),sep,fixed=T))
	cn <- m[1,]
	m <- as.data.frame(m, stringsAsFactors=F)
	m <- m[2:nrow(m),]
	m.df <- as.data.frame(lapply(1:ncol(m),
								 function(i) {
								 	type.convert(m[,i])
								 }
	), stringsAsFactors = FALSE)
	return(setNames(m.df, cn))
}
