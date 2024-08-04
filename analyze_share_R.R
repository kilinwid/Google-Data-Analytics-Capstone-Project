mean(cleaned_trips$ride_length)
median(cleaned_trips$ride_length)
max(cleaned_trips$ride_length)
min(cleaned_trips$ride_length)
summary(cleaned_trips$ride_length)

aggregate(cleaned_trips$ride_length ~ cleaned_trips$member_casual, FUN = mean)
aggregate(cleaned_trips$ride_length ~ cleaned_trips$member_casual, FUN = median)
aggregate(cleaned_trips$ride_length ~ cleaned_trips$member_casual, FUN = max)
aggregate(cleaned_trips$ride_length ~ cleaned_trips$member_casual, FUN = min)

cleaned_trips$day_of_week <- ordered(cleaned_trips$day_of_week, levels=c("Sunday","Monday","Tuesday","Wednesday","Thursday","Friday","Saturday"))
aggregate(cleaned_trips$ride_length ~ cleaned_trips$member_casual + cleaned_trips$day_of_week, FUN = mean)

cleaned_trips %>% 
  mutate(weekday=wday(started_at,label=TRUE)) %>% 
  group_by(member_casual, weekday) %>% 
  summarise(number_of_rides=n()
            ,average_duration=mean(ride_length)) %>% 
  arrange(member_casual,weekday)

cleaned_trips %>% 
  mutate(weekday=wday(started_at, label=TRUE)) %>% 
  group_by(member_casual,weekday) %>% 
  summarise(number_of_rides=n()
            ,average_duration=mean(ride_length)) %>% 
  arrange(member_casual, weekday) %>% 
  ggplot(aes(x=weekday,y=number_of_rides,fill = member_casual))+
  geom_col(position = "dodge")

cleaned_trips %>% 
  mutate(weekday=wday(started_at, label=TRUE)) %>% 
  group_by(member_casual,weekday) %>% 
  summarise(number_of_rides=n()
            ,average_duration=mean(ride_length)) %>% 
  arrange(member_casual,weekday) %>% 
  ggplot(aes(x=weekday,y=average_duration,fill = member_casual))+
  geom_col(position = "dodge")
