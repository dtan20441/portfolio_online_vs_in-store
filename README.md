## Project Background

Goober is a retail company that offers a variety of products from pastry to furnitures through its physical stores and online website. 

The company has data from January 1st 2022 to January 18th 2025 regarding product categories, total spent and store location (online and in-store) that this project will analyse to uncover insights to ensure future business success.

Insights and recommendations are provided on the following areas of Online vs In-store channels:
- **Sales trend analysis**: Evaluation of sales for the different channels.
- **Product category comparison**: An analysis of Goober's various product lines performance between the different store channels.
- **Discount effectiveness**: An assessment of if discounts drive more sales online or in-store.
- **Customer behaviour**: Evaluation of store channels in repeating purchase behaviour. 

An interactive Tableau dashboard can be viewed online [here](https://public.tableau.com/app/profile/douglas.tan3479/viz/retail_sales_portfolio/OnlinevsIn-storedashboard) and the Tableau workbook can be downloaded [here](https://github.com/dtan20441/portfolio_online_vs_in-store/blob/main/retail_sales_portfolio.twbx).

The SQL queries used to inspect, clean and prepare data for the dashboard can be found [here](https://github.com/dtan20441/portfolio_online_vs_in-store/blob/main/retail_sales.sql). 

## Data Structure & Initial Checks
Goober's data consists of 1 table that has 12,575 records.  
![Schema](https://github.com/dtan20441/portfolio_online_vs_in-store/blob/main/Screenshots/Schema.png)

## Insights
### Overview of findings
From January 2022 to January 2025, revenue showed no seasonality and online purchases raised $30,734 more than in-store purchases. Furthermore, the average order value of online sales was 1 higher than those in-store.

Online sales appear to be superior to in-store purchases, with majority of categories leaning towards online, more discounts being applied in that channel, and online customers having a higher median purchase frequency.

### Sales trend analysis
