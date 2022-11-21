# immigration_analysis
An exploratory data analysis (EDA) on immigration visas in the US. 

### Goal: identify to whom and where to advertise legal immigration services in the US.

### Process: 
1. Build a database of immigration requests and demographic profiles, using Eurostat and other data resources.
2. Query the immigration database to build value profiles.
3. Visualize findings on deployment service (like Streamlit or Tableau).

## 1. Creating a Database
![SQL_screenshot_1](https://github.com/VeniceHartwell/immigration_analysis/blob/main/images/SQL_screenshot_1.png)
Create the new SQL database which we can add our CSV data to. Include a check for any previous database info and clear it. Create each variable with as efficient data types as possible.

## 2. Queries
![SQL_screenshot_2](https://github.com/VeniceHartwell/immigration_analysis/blob/main/images/SQL_screenshot_2.png)
This is a simple WHERE / GROUP / ORDER function to find the most popular fields which US visa petitions are made for. This query includes a HAVING function in order to filter out many miscellaneous fields which would only obscure the findings.

![SQL_screenshot_3](https://github.com/VeniceHartwell/immigration_analysis/blob/main/images/SQL_screenshot_3.png)
This is a simple WHERE / GROUP / ORDER function to find the most popular state where US visa petitions are made.

![SQL_screenshot_4](https://github.com/VeniceHartwell/immigration_analysis/blob/main/images/SQL_screenshot_4.png)
These queries analyze visa petition growth and employment status, the latter using a CASE statement to filter out full time jobs.

### Findings:
- The MOST LUCRATIVE FIELDS to advertise immigration visas to, in order, are: marketing managers, IT managers, GMs, and sales managers. CEOs take fifth place.
- The MOST LUCRATIVE STATES to advertise immigration visas for, in order, are: California, New York, Texas, and then Florida.

### Resources:
- [Kaggle](https://www.kaggle.com/datasets/nsharan/h-1b-visa?resource=download)
- [Eurostat (for use in future projects)](https://ec.europa.eu/eurostat/databrowser/explore/all/popul?lang=en&subtheme=migr.migr_man.migr_res&display=list&sort=category)
- *Find a resource for demographic-segmented income and income source.*
- *Find a resource for demographic-segmented social media usage and internet traffic.*
