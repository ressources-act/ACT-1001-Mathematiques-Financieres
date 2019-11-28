v <- (1.12)^(-1)
20*v^2*(1-(1.02*v)^10)/(1-1.02*v) - 50*v - 60

a <- as.Date(c("2013-12-31", "2014-03-31", "2014-03-31", "2014-06-30", "2014-06-30", 
               "2014-09-30", "2014-09-30", "2014-12-31", "2014-12-31"))
b <- c(500000, 525000, 425000, 420000, 470000, 475000, 500000, 485000, 410000)
l <- data.frame(a,b)
l
createGraph(
    ggplot(data = l, aes(x = a, y = b)) + 
    geom_line() + 
    geom_label(label=b, size = 3) + 
    labs(x = "Date",
         y = "Montant"), "loll")
    
       

a <- c(0,1,2,3,4,5)
b <- c("$", "$", "$", "$", "$", "$")
l <- data.frame(a, b)

a <- ggplot(data = l, aes(x = a, y = b)) + 
    geom_point() +
    geom_label(label=c("-X", "X", "-X", "X", "-X", "X"), size = 7) + 
    labs(x = "Temps", y = "Montants")


a <- as.character(0:12)
b <- c("$", "$", "$", "a", "$", "a", "$", "a", "$", "a", "$", "a", "$")
l <- data.frame(a, b)
lab <- c("-6", "-5", "2", "2(1.02)", "2(1.02)^2", 
         "2(1.02)^3", "2(1.02)^4", "2(1.02)^5", 
         "2(1.02)^6", "2(1.02)^7", "2(1.02)^8", 
         "2(1.02)^9", "2(1.02)^10)")
l
a <- ggplot(data = l, aes(x = a, y = b)) + 
    geom_point() +
    geom_label(label=lab, size = 4) + 
    labs(x = "Temps", y = "Montants (en dizaine de milliers de $") +
    xlim(as.character(0:12))

createGraph(a, "lol")
