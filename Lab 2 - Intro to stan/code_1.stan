data {
   int M;//num of y analyzes
   
}

generated quantities {
   
   real lambda=fabs(normal_rng(0,121));
   int y_sim[M];
   for (k in 1:M) {
       y_sim[k]=poisson_rng(lambda);
   }
}