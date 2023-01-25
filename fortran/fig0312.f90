PROGRAM fig0312

  IMPLICIT none

  INTEGER::i 
  REAL::sum1, sum2, x1, x2 
  DOUBLE PRECISION::sum3, x3 

  sum1=0.
  sum2=0. 
  sum3=0.
  x1=1.
  x2=1.e−5 
  x3=1.d−5 
  
  DO i=1,100000   
    sum1=sum1+x1   
    sum2=sum2+x2   
    sum3=sum3+x3 
  END DO 
  
  PRINT *, sum1 
  PRINT *, sum2 
  PRINT *, sum3 
  
  STOP
  
END PROGRAM fig0312