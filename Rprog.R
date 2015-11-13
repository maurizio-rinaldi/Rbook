lut <- c("AA" = "American", "AS" = "Alaska", "B6" = "JetBlue", "CO" = "Continental", 
         "DL" = "Delta", "OO" = "SkyWest", "UA" = "United", "US" = "US_Airways", 
         "WN" = "Southwest", "EV" = "Atlantic_Southeast", "F9" = "Frontier", 
         "FL" = "AirTran", "MQ" = "American_Eagle", "XE" = "ExpressJet", "YV" = "Mesa")

# Use lut to translate the UniqueCarrier column of hflights
hflights=tbl_df(hflights)
UniqueCarrier=lut[hflights$UniqueCarrier]
# Inspect the resulting raw values of your variables
glimpse(hflights)
UniqueCarrier[1:10]
unique(hflights$CancellationCode)


# The hflights tbl you built in the previous exercise is available in the workspace.

# Build the lookup table: lut
lut=c("carrier"="A","weather"="B","FFA"="C","security"="D","not cancelled"="E")

# Use the lookup table to create a vector of code labels. Assign the vector to the CancellationCode column of hflights

CancellationCode

# Inspect the resulting raw values of your variables
