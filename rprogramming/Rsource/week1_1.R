#___________________________________________________________________________________________________
# Installing swirl package
message("---Installing swirl package---")

install.packages("swirl")

#___________________________________________________________________________________________________
#Loading and running swirl package

message('---Loading and running swirl---')

library(swirl)
swirl()

#___________________________________________________________________________________________________
#Installing R Programming Course from swirl

message('---Installing R Programming Course from swirl---')

install_from_swirl("R Programming")
