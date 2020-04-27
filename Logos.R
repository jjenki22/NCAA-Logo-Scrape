library(rvest)
library(dplyr)
library(stringr)

# A-C
a_c <- read.csv("a_c_logo_all.csv",stringsAsFactors = FALSE)
a_c$New_Name <- str_trim(a_c$New_Name)
url <- "https://www.sportslogos.net/teams/list_by_league/30/NCAA_Division_I_a-c/NCAA_a-c/logos/"
webpage <- html_session(url)

a_c_webpage <- webpage %>% 
  html_nodes("div") %>% 
  html_nodes("ul") %>% 
  html_nodes("img") %>% 
  html_attr("src")
  
a_c$url <- a_c_webpage

get_logos <- function(url_2, name) {
  download.file(url_2, name, mode="wb")
}

mapply(get_logos, a_c$url[1], a_c$New_Name[1])

# D-H
d_h <- read.csv("d_h.csv")
d_h$New_Name <- str_trim(d_h$New_Name)
d_h_url <- "https://www.sportslogos.net/teams/list_by_league/31/NCAA_Division_I_d-h/NCAA_d-h/logos/"
d_h_webpage <- html_session(d_h_url)
d_h_webpage <- d_h_webpage %>% 
  html_nodes("div") %>% 
  html_nodes("ul") %>% 
  html_nodes("img") %>% 
  html_attr("src")

d_h$url <- d_h_webpage

mapply(get_logos, d_h$url, d_h$New_Name)

# i - m
i_m <- read.csv("i_m.csv")
i_m$file.name <- str_trim(i_m$file.name)
i_m_url <- "https://www.sportslogos.net/teams/list_by_league/32/NCAA_Division_I_i-m/NCAA_i-m/logos/"
i_m_webpage <- html_session(i_m_url)
i_m_webpage <- i_m_webpage %>% 
  html_nodes("div") %>% 
  html_nodes("ul") %>% 
  html_nodes("img") %>% 
  html_attr("src")

i_m$url <- i_m_webpage

mapply(get_logos, i_m$url, i_m$file.name)

# n-r
n_r <- read.csv("N-R.csv")
n_r$file.name <- str_trim(n_r$New_Name)
n_r_url <- "https://www.sportslogos.net/teams/list_by_league/33/NCAA_Division_I_n-r/NCAA_n-r/logos/"
n_r_webpage <- html_session(n_r_url)
n_r_webpage <- n_r_webpage %>% 
  html_nodes("div") %>% 
  html_nodes("ul") %>% 
  html_nodes("img") %>% 
  html_attr("src")

n_r$url <- n_r_webpage

mapply(get_logos, n_r$url, n_r$file.name)

# s-t
s_t <- read.csv("s_t.csv")
s_t$file.name <- str_trim(s_t$file.name)
s_t_url <- "https://www.sportslogos.net/teams/list_by_league/34/NCAA_Division_I_s-t/NCAA_s-t/logos/"
s_t_webpage <- html_session(s_t_url)
s_t_webpage <- s_t_webpage %>% 
  html_nodes("div") %>% 
  html_nodes("ul") %>% 
  html_nodes("img") %>% 
  html_attr("src")

s_t$url <- s_t_webpage

mapply(get_logos, s_t$url, s_t$file.name)

# u-z
u_y <- read.csv("u_y.csv")
u_y$file.name <- str_trim(u_y$file.name)
u_y_url <- "https://www.sportslogos.net/teams/list_by_league/35/NCAA_Division_I_u-z/NCAA_u-z/logos/"
u_y_webpage <- html_session(u_y_url)
u_y_webpage <- u_y_webpage %>% 
  html_nodes("div") %>% 
  html_nodes("ul") %>% 
  html_nodes("img") %>% 
  html_attr("src")

u_y$url <- u_y_webpage

mapply(get_logos, u_y$url, u_y$file.name)

