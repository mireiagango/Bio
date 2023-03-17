path_in <-"C:\Users\User\Desktop\Git\Bio\RNAReport"
path_out <- "C:\Users\User\Desktop\Git\Bio\RNAAnalysis_Gangonells"
file <- "GSE116583_transplant.am.htseq.all.rpkm.txt"
setwd(path_in)
if(!dir.exists(path_out)) dir.create(path_out)
fn <-file.path(path_out, paste0(strsplit(file,"\\.")[[1]][1], 
                                "_", Sys.Date()))
#Process                                     
rmarkdown::render("Informe_dinamic.Rmd", params = list(path_in=path_in, path_out=path_out, 
                  file = file), output_format =  c("pdf_document"),
                  output_file = paste0(fn, output_format ='.pdf'), encoding = "UTF8")
