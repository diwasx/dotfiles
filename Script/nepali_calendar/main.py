#!/bin/env python3

import sys
from datetime import datetime
import adbs

# current_date_ad = "2019/06/04"
current_date_ad = datetime.today().strftime('%Y/%m/%d')
current_date_bs = adbs.ad_to_bs(current_date_ad)
# print(current_date_bs["year"])

if len(sys.argv)==2:
    if sys.argv[1] == "ne":
        # Nepali font
        bs_year = current_date_bs["ne"]["year"]
        # bs_month = current_date_bs["ne"]["month"]
        bs_month = current_date_bs["ne"]["str_month"]
        bs_day = current_date_bs["ne"]["day"]
        print (bs_year,"-",bs_month,"-",bs_day)
    if sys.argv[1] == "en":
        # English font
        bs_year = current_date_bs["en"]["year"]
        bs_month = current_date_bs["en"]["str_month"]
        bs_day = current_date_bs["en"]["day"]
        # print (bs_year,".",bs_month,".",bs_day)
        print (bs_year,bs_month,bs_day)
else:
    print('Use argument "en" or "ne"')
