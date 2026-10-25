text1 <- "Ram has scored"
text2 <- 89
text3 <- "marks"
text4 <- "in Mathematics"

# paste() combines the values into a single character string, inserting spaces between them by default
final_text <- paste(text1,text2,text3,text4)
print(final_text)

final_text_0 <- paste0(text1,text2,text3,text4) #No space by default
print(final_text_0)
|> 
