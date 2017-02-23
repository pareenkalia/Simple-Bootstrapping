
# creating a vector with data
heartrates <- c(160, 184, 173, 176, 168, 156, 160, 160, 174, 166)

# computing the mean and variance of data
mean(heartrates)
var(heartrates)

# creating 200 bootstrap samples 
hrmeans <- numeric(200) #create numeric vector of size 200
hrvars <- numeric(200)

for (i in 1:200) {
  #creating a sample from heartrates of size 10 with replacement
  this.samp <- heartrates[sample(10,10,replace=TRUE)] 
  # setting the ith value of hrmeans and hrvars 
  # from the mean and variance of the ith sample
  hrmeans[i] <- mean(this.samp)
  hrvars[i] <- var(this.samp)
}
  
# creating histograms of 200 sample

hist(hrmeans, nclass=15)
hist(hrvars, nclass=15)

bsmeanpivq <- hrmeans -167.7
sort(bsmeanpivq)


  