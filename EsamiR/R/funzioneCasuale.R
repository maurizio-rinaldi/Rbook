#' Genera una funzione random (oggetto di classe Funzione).
#'
#' Per le funzioni periodiche il dominio viene ristretto ad un periodo,
#' per le altre funzioni si considera un sottointervallo del dominio in cui la
#' funzione assuma valori assoluti minori bignumber e  maggiori di smallnumber.
#' @param a il range dei parametri
#' @param b il numero di parametri
#' @param tipo di funzione
#' @return la funzione generata (un oggetto di classe Funzione)
#' @examples
#' funzioneCasuale("sin",3,2)
#' @export

funzioneCasuale<- function(tipo,a=9,b=2,finito=F,bignumber=10^8,smallnumber=10^-4)
{fr={function(x) 0}


switch(tipo,
       sin= {
               temp=sceltarange(b,-a,a,0)
               ftex=paste("\\\\sin(",paste(temp[1:2],c("","x"),collapse="+",sep=""),")")
               fr1=paste("sin(",paste(temp[1:2],c("","*x"),collapse="+",sep=""),")")
               fr1=gsub("\\+-","-",fr1)
               body(fr)= parse(text=fr1)
               k=sample(-3:3,1,prob=c(1,2,3,6,3,2,1))
               environment(fr)<-globalenv()
               domain=c(-Inf,Inf)
               if (finito==T) domain=sort(c(-temp[1]/temp[2],(2*pi-temp[1])/temp[2])
                                          +2*pi *k/temp[2])
               },


       cos= {
               temp=sceltarange(b,-a,a,0)
               ftex=paste("\\\\cos(",paste(temp[1:2],c("","x"),collapse="+",sep=""),")")
               fr1=paste("cos(",paste(temp[1:2],c("*1","*x"),collapse="+",sep=""),")")
               fr1=gsub("\\+-","-",fr1)
               body(fr)= parse(text=fr1)
               environment(fr)<-globalenv()
               domain=c(-Inf,Inf)
       },###cos (a x+b)
       hyp= {
               x=0
               while(x==0) {sceltarange(4,-a,a)->temp;x=temp[1]*temp[4]-temp[2]*temp[3]}
               ftex=paste("\\\\frac{",paste(temp[1:2],c("","x"),collapse="+",sep=""),"}{",paste(temp[3:4],c("","x"),collapse="+",sep=""),"}",sep="")#### (a x+b)/(c x+d)
               fr1=paste("(",paste(temp[1:2],c("1","x"),collapse="+",sep="*"),")/(",paste(temp[3:4],c("1","x"),collapse="+",sep="*"),")",sep="")

               body(fr)= parse(text=fr1)
               environment(fr)<-globalenv()
               domain=sample(list(c(-Inf,-temp[3]/temp[4]),c( -temp[3]/temp[4],Inf)),1)[[1]]
       },###c(a x+b)/(c x+d)
       ax={
               t=c(sceltarange(2,8,1),sceltarange(-5,5,1),sceltarange(1,5,1))
               ftex=paste(t[1],"^{",paste(t[2:3],c("","x"),collapse="+",sep=""),"}",sep="")
               fr1=paste(t[1],"^(",paste(t[2:3],c("","*x"),collapse="+",sep=""),")",sep="")
               body(fr)= parse(text=fr1)
               environment(fr)<-globalenv()
               domain=c(-Inf,Inf)
               rmax=(log(bignumber,t[1])-t[2])/t[3]
               rmin=(log(smallnumber,t[1])-t[2])/t[3]
               domain=c(rmin,rmax)
       },  ##a^(kx+b)
       xa={
               t=c(sceltarange(2,6,1),sceltarange(2,9,1,0),sceltarange(1,9,1))
               ftex=paste("(",paste(t[2:3],c("","x"),collapse="+",sep=""),")^{",t[1],"}")
               fr1=paste("(",paste(t[2:3],c("","*x"),collapse="+",sep=""),")^(",t[1],")")
               body(fr)= parse(text=fr1)
               environment(fr)<-globalenv()
               fr
               domain=sort(c((smallnumber^(1/t[1])-t[2])/t[3],(bignumber^(1/t[1])-t[2])/t[3]))
       }, ##  (ax+b)^d
       radice={
               temp=list(sceltarange(1,4,1),sceltarange(1,4,1),sample(c("+","-"),1))
               ftex=paste("\\\\sqrt{",temp[[1]]^2,temp[[3]],temp[[2]]^2,"x^2}",sep="")
               fr1=paste("sqrt(",temp[[1]]^2,temp[[3]],temp[[2]]^2,"*x^2)")
               body(fr)= parse(text=fr1)
               environment(fr)<-globalenv()
               ftex
               domain=c(-Inf,Inf)
               if(temp[3]=="-") domain=c(-temp[1],temp[1])/temp[2]
       },
       ,## sqrt(a^2+-b^2 x^2)
       logn= {
               temp=c(sceltarange(1,4,1),sceltarange(1,4,1))
               ftex=paste("\\\\log(",paste(temp[1:2],c("","x"),collapse="+",sep=""),")")
               fr1=paste("log(",paste(temp[1:2],c("","*x"),collapse="+",sep=""),")")
               body(fr)= parse(text=fr1)
               environment(fr)<-globalenv()
               domain=c(-temp[1]/temp[2],Inf)
       },
       ###log(a x+b)
       expo= {
               temp=c(sceltarange(1,4,1),sceltarange(1,4,1))
               ftex=paste("\\\\e^{",paste(temp[1:2],c("","x"),collapse="+",sep=""),"}")
               fr1=paste("exp(",paste(temp[1:2],c("","*x"),collapse="+",sep=""),")")
               body(fr)= parse(text=fr1)
               environment(fr)<-globalenv()
               domain=c(-Inf,Inf)
               rmax=(log(bignumber)-temp[1])/temp[2]
               rmin=(log(smallnumber)-temp[1])/temp[2]
               domain=c(rmin,rmax)
       },###exp(a x+b)
       tan= {
               temp=c(sceltarange(1,4,1),sceltarange(1,4,1))
               ftex=paste("\\\\tan(",paste(temp[1:2],c("","x"),collapse="+",sep=""),")")
               fr1=paste("tan(",paste(temp[1:2],c("","*x"),collapse="+",sep=""),")")
               body(fr)= parse(text=fr1)
               environment(fr)<-globalenv()
               k=sample(-5:5,1)
               domain=k*pi+c(-(pi+2*temp[1])/(2*temp[2]),(pi-2*temp[1])/(2*temp[2]))
       },###tan(a x+b)
       asin={ tipolin("asin")->temp
               ftex=temp[[1]]
               fr=temp[[2]]
               environment(fr)<-globalenv()
               domain=temp[[3]]},
       acos={ tipolin("acos")->temp
               ftex=temp[[1]]
               fr=temp[[2]]
               environment(fr)<-globalenv()
               domain=temp[[3]]},
       atan={ tipolin("atan")->temp
               ftex=temp[[1]]
               fr=temp[[2]]
               domain=temp[[3]]},
       poli= {
               temp1=sceltarange(-9,9,5,0)
               temp2=sceltarange(0,6,5,logica=F)

               ftex=paste(temp1,"x^",temp2,sep="",collapse="+")###polinomio
               fr1=paste(temp1,"*x^",temp2,sep="",collapse="+")###
               body(fr)= parse(text=fr1)
               environment(fr)<-globalenv()
               domain=c(-Inf,Inf)
       })
gsub("\\+-","-",ftex)->ftex
gsub("\\^1","",ftex)->ftex
gsub("1x","x",ftex)->ftex
gsub("x^0","1",ftex)->ftex
ftex
uscita=nuovaFunzione(fr,ftex,domain)
return(uscita)}
