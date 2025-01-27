library(marinecs100b)
Writing a utility function ----------------------------------------------

  # P1: How did you extract the temperature and exposure from the hottest day?
  # Copy-paste the code here.
hottest_idx <- which.max(kefj_temperature)
hottest_time <- kefj_datetime[hottest_idx]
hottest_site <- kefj_site[hottest_idx]
hotday_start <- as.POSIXct("2018-07-03 00:00", tz = "Etc/GMT+8")
hotday_end <- as.POSIXct("2018-07-03 23:59", tz = "Etc/GMT+8")
hotday_idx <- kefj_site == hottest_site &
  kefj_datetime >= hotday_start &
  kefj_datetime <= hotday_end
hotday_datetime <- kefj_datetime[hotday_idx]
hotday_temperature <- kefj_temperature[hotday_idx]
hotday_exposure <- kefj_exposure[hotday_idx]
plot_kefj(hotday_datetime,hotday_temperature, hotday_exposure)

  # P2: Fill in the blanks below to write the Alaskan datetime utility function.
Alaskan_datetime <- function(datetime) {
  datetime_extraction <- as.POSIXct(datetime, tz = "Etc/GMT+8")
  return(datetime_extraction)
}

# Extracting data ---------------------------------------------------------


# P3: Make a copy of your code from P1 and edit it to plot the temperature and
# exposure for "Aialik" on 2012-06-01
 Aialik_idx <- which.max(kefj_temperature)
 Aialik_time <- kefj_datetime[Aialik_idx]
  Aialik_site <- kefj_site[Aialik_idx]
  Aialik_start <- as.POSIXct("2012-06-01 00:00", tz = "Etc/GMT+8")
  Aialik_end <- as.POSIXct("2012-06-01 23:59", tz = "Etc/GMT+8")
  Aialik_idx <- kefj_site == Aialik_site &
    kefj_datetime >= Aialik_start &
    kefj_datetime <= Aialik_end
  Aialik_datetime <- kefj_datetime[Aialik_idx]
  Aialik_temperature <- kefj_temperature[Aialik_idx]
  Aialik_exposure <- kefj_exposure[Aialik_idx]
  plot_kefj(Aialik_datetime,Aialik_temperature, Aialik_exposure)



# P4: Make a copy of your code from P3 and edit it to plot the temperature and
# exposure for "Harris" on 2016-04-05.


  site <- "Harris"
  Harris_start <- as.POSIXct("2016-04-05 00:00", tz = "Etc/GMT+8")
  Harris_end <- as.POSIXct("2016-04-05 23:59", tz = "Etc/GMT+8")
  Harris_idx <- kefj_site == site &
    kefj_datetime >= Harris_start &
    kefj_datetime <= Harris_end
  Harris_datetime <- kefj_datetime[Harris_idx]
  Harris_temperature <- kefj_temperature[Harris_idx]
  Harris_exposure <- kefj_exposure[Harris_idx]
  plot_kefj(Harris_datetime,Harris_temperature, Harris_exposure)

# P5: Compare your solutions for P3 and P4 - what variables changed?
 # the variables site names and the times.
# P6: What you would pick for the temperature extraction function and
# parameters' names?
temperature_extraction
parameter_name
# Writing extraction functions --------------------------------------------

# P7: Fill in the blanks in the code below to write your temperature extraction
# function.

temperature_extraction <- function(site, start, end) {
  start_extraction <- as.POSIXct(start, tz = "Etc/GMT+8")
  end_extraction <- as.POSIXct(end, tz = "Etc/GMT+8")
  site_idx <- kefj_site == site &
    kefj_datetime >= start_extraction &
    kefj_datetime <= end_extraction
  result <- kefj_temperature[site_idx]

  return(result)
}


# P8: Make a copy of your solution to P7, and edit it to create exposure and
# datetime extraction functions.

exposure_extraction <- function(site, start, end) {
  start_extraction <- as.POSIXct(start, tz = "Etc/GMT+8")
  end_extraction <- as.POSIXct(end, tz = "Etc/GMT+8")
  site_idx <- kefj_site == site &
    kefj_datetime >= start_extraction &
    kefj_datetime <= end_extraction
  result <- kefj_exposure[site_idx]

  return(result)
}

datetime_extraction <- function(site, start, end) {
  start_extraction <- as.POSIXct(start, tz = "Etc/GMT+8")
  end_extraction <- as.POSIXct(end, tz = "Etc/GMT+8")
  site_idx <- kefj_site == site &
    kefj_datetime >= start_extraction &
    kefj_datetime <= end_extraction
  result <- kefj_datetime[site_idx]

  return(result)
}

datetime_extraction("Aialik", "2016-04-05 00:00", "2016-04-05 23:59")


# P9: Export your annotated screenshot as a JPEG called "annotated_function.jpg"
# and add it to your copy of the module repository. (It should be in the same
# folder as this file.)
added our screenshot on github

# P10: Visualize Nuka Pass on July 1, 2018.

plot_kefj(datetime_extraction( "Nuka_Pass","2018-07-01 00:00", "2018-07-01 23:59"),
temperature_extraction("Nuka_Pass", "2018-07-01 00:00", "2018-07-01 23:59"),
exposure_extraction("Nuka_Pass", "2018-07-01 00:00", "2018-07-01 23:59"))


# P11: Save a copy of the Nuka Pass plot as "nuka_pass_2018-07-01.png" in this
# repo


# P12: Compare the code you wrote to create the plot in this module to the code
# you wrote in PROG101. Qualitatively, how do they compare? Which one is easier
# to read and why?
Prog 101 has many variable definitions that can create more errors. Prog 102 is
easier to read because we created functions that have less lines of code and
easier to get specific data points using the functions. Less lines of code also
makes prog 102 easier to fix if theres errors.
# Extracting data ---------------------------------------------------------



