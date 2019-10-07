library(dplyr)
df <- read.csv('btv_police_incidents/incidents_cleaned.csv')
View(df)
summary(df)

# Call Type Group Counts
ggplot(data=df, mapping=aes(x=call_type_group)) + geom_bar(fill='skyblue4') + theme( axis.text.x = element_text(hjust=1, angle = 45))

# Call Type Counts
ggplot(data=df, mapping=aes(x=call_type)) + geom_bar(fill='skyblue4') + theme( axis.text.x = element_text(hjust=1, angle = 45))

# Call Type Counts by Call Type Group
ggplot(data=df, mapping=aes(x=call_type,fill=call_type_group)) + geom_bar() + theme( axis.text.x = element_text(hjust=1, angle = 45)) + scale_fill_brewer(palette='Set1')

# Calls by Day of Week
ggplot(data=df, mapping=aes(x=dayofweek)) + geom_bar(fill='skyblue4') + theme( axis.text.x = element_text(hjust=1, angle = 45))

# Call Type Counts by Call Type Group, colored by Month
ggplot(data=df, mapping=aes(x=call_type,fill=month)) + geom_bar() + theme( axis.text.x = element_text(hjust=1, angle = 45))

# Call Type Group by Day of Week (100%)
ggplot(data=df, mapping=aes(x=dayofweek,fill=call_type_group)) + geom_bar(position='fill',color="white") + theme( axis.text.x = element_text(hjust=1, angle = 45)) + scale_fill_brewer(palette="Set2")

# Call Type Group by Month (100%)
ggplot(data=df, mapping=aes(x=month,fill=call_type_group)) + geom_bar(position='fill',color="white") + theme( axis.text.x = element_text(hjust=1, angle = 45)) + scale_fill_brewer(palette="Set2")

# Call Type by Day of Week (100%)
ggplot(data=df, mapping=aes(x=call_type,fill=dayofweek)) + geom_bar(position='fill',color="darkgrey") + theme( axis.text.x = element_text(hjust=1, angle = 45)) + scale_fill_brewer(palette="Spectral")

# Call Type by Month (100%)
ggplot(data=df, mapping=aes(x=call_type,fill=month)) + geom_bar(position='fill',color="white") + theme( axis.text.x = element_text(hjust=1, angle = 45))

# Call Type Group by Area of Town (100%)
ggplot(data=df, mapping=aes(x=call_type_group,fill=area)) + geom_bar(position='fill') + theme( axis.text.x = element_text(hjust=1, angle = 45)) + scale_fill_brewer(palette="Set3")

# Call Type by Area of Town (100%)
ggplot(data=df, mapping=aes(x=call_type,fill=area)) + geom_bar(position='fill') + theme( axis.text.x = element_text(hjust=1, angle = 45)) + scale_fill_brewer(palette="Set3")

alc <- df %>% filter(call_type=="Intoxication")
View(alc)

# Intoxication by Month
ggplot(data=alc, mapping=aes(x=month)) + geom_bar(fill='skyblue4') + theme( axis.text.x = element_text(hjust=1, angle = 45))

# Intoxication by Day of Week
ggplot(data=alc, mapping=aes(x=dayofweek)) + geom_bar(fill='skyblue4') + theme( axis.text.x = element_text(hjust=1, angle = 45))


