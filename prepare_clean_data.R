colnames(one_year_trips)
nrow(one_year_trips)
dim(one_year_trips)
head(one_year_trips)
str(one_year_trips)
summary(one_year_trips)

unique(one_year_trips$member_casual)
unique(one_year_trips$rideable_type)
any(one_year_trips$start_station_name=="HQ QR")
one_year_trips$ride_id[duplicated(one_year_trips$ride_id)]

one_year_trips$date <- as.Date(one_year_trips$started_at)
one_year_trips$month <- format(as.Date(one_year_trips$date), "%m")
one_year_trips$day <- format(as.Date(one_year_trips$date), "%d")
one_year_trips$year <- format(as.Date(one_year_trips$date), "%Y")
one_year_trips$day_of_week <- format(as.Date(one_year_trips$date), "%A")
one_year_trips$ride_length <- difftime(one_year_trips$ended_at,one_year_trips$started_at)

str(one_year_trips)
is.factor(one_year_trips$ride_length)
one_year_trips$ride_length <- as.numeric(as.character(one_year_trips$ride_length))
is.numeric(one_year_trips$ride_length)
str(one_year_trips)

cleaned_trips <- one_year_trips %>% 
  filter(ride_length>0) %>% 
  drop_na()

str(cleaned_trips)
