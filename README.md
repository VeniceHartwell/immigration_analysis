# immigration_analysis
An exploratory data analysis (EDA) on immigration visas in the US. 

## Goal: identify to whom and where to advertise legal immigration services in the US.

## Process: 
1. Build a database of immigration requests and demographic profiles, using Eurostat and other data resources.
2. Query the immigration database to build value profiles.
3. Visualize findings on deployment service (like Streamlit or Tableau).

---

## 1. Creating a Database
![SQL_screenshot_1](https://github.com/VeniceHartwell/immigration_analysis/blob/main/images/SQL_screenshot_1.png)
Create the new SQL database which we can add our CSV data to. Include a check for any previous database info and clear it. Create each variable with as efficient data types as possible.

---

## 2. Queries
## Popular Fields
![SQL_screenshot_2](https://github.com/VeniceHartwell/immigration_analysis/blob/main/images/SQL_screenshot_2.png)
This is a simple WHERE / GROUP / ORDER function to find the most popular fields which US visa petitions are made for. This query includes a HAVING function in order to filter out many miscellaneous fields which would only obscure the findings.
### Top Results
| total_wage | num_in_field | field |
| ---------- | ------------ | ----- |
| 34042507585 | 486964 | COMPUTER SYSTEMS ANALYSTS |
| 33072218045 | 395703 | SOFTWARE DEVELOPERS, APPLICATIONS |
| 23899853301 |	380260 | COMPUTER PROGRAMMERS |
| 12118358130 | 171840 | COMPUTER OCCUPATIONS, ALL OTHER |
| 7267283030 | 79408 | SOFTWARE DEVELOPERS, SYSTEMS SOFTWARE |
| 4519294547 | 63175 | MANAGEMENT ANALYSTS |
| 3828157351 | 49577 | FINANCIAL ANALYSTS |
| 2916321384 | 48321 | ACCOUNTANTS AND AUDITORS |
| 2885347478 | 41170 | MECHANICAL ENGINEERS |
| 2529083669 | 38200 | NETWORK AND COMPUTER SYSTEMS ADMINISTRATORS |
| 2489283956 | 37051 | DATABASE ADMINISTRATORS |



## Popular Locations
![SQL_screenshot_3](https://github.com/VeniceHartwell/immigration_analysis/blob/main/images/SQL_screenshot_3.png)
This is a simple WHERE / GROUP / ORDER function to find the most popular state where US visa petitions are made.
### Top Results
| total_wage | num_in_state | state |
| ---------- | ------------ | ----- |
44342230468 |	524909 | CALIFORNIA
19075889506 | 276814 | TEXAS
20536919196 | 269620 | NEW YORK
14197774484 | 202717 | NEW JERSEY
10056536911 | 152277 | ILLINOIS
7934125213 | 109395 | MASSACHUSETTS
7192317529 | 104515 | PENNSYLVANIA
7918248935 | 98125 | WASHINGTON
6409117987 | 97271 | GEORGIA
6369306058 | 97114 | FLORIDA
6123247986 | 84657 | VIRGINIA



## Emplyment Status
![SQL_screenshot_4](https://github.com/VeniceHartwell/immigration_analysis/blob/main/images/SQL_screenshot_4.png)
These queries analyze visa petition growth and employment status, the latter using a CASE statement to filter out full time jobs.
### Results
| total_petitions | full_time |
| --------------- | --------- |
| 426288 | N |
| 2575854 | Y |

---

## Findings:
- The MOST LUCRATIVE FIELDS to advertise immigration visas to, in order, are all in IT, aside from accountants and mechanical engineers. Analysts take first place!
- The MOST LUCRATIVE STATES to advertise immigration visas for are California, New York, Texas, New York.
- 16.5% of all US visa petitions from 2011-2016 went to part-time visas.

---

## Resources:
- [Kaggle](https://www.kaggle.com/datasets/nsharan/h-1b-visa?resource=download)
- [Eurostat (for use in future projects)](https://ec.europa.eu/eurostat/databrowser/explore/all/popul?lang=en&subtheme=migr.migr_man.migr_res&display=list&sort=category)
- *Find a resource for demographic-segmented income and income source.*
- *Find a resource for demographic-segmented social media usage and internet traffic.*
