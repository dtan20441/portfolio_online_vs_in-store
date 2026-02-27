## Project Background

Goober is a retail company that offers a variety of products from pastry to furnitures through its physical stores and online website. 

The company has data from January 1st 2022 to January 18th 2025 regarding product categories, revenue, 25 customers and, store location (online and in-store) that this project will analyse to uncover insights to ensure future business success.

Insights and recommendations are provided on the following areas of Online vs In-store channels:
- **Sales trend analysis**: Evaluation of sales for the different channels.
- **Product category comparison**: An analysis of Goober's various product lines performance between the different store channels.
- **Discount effectiveness**: An assessment on if discounts drive more sales online or in-store.
- **Customer behaviour**: Evaluation of repeating purchase behaviour for different store channels. 

An interactive Tableau dashboard can be viewed online [here](https://public.tableau.com/app/profile/douglas.tan3479/viz/retail_sales_portfolio/OnlinevsIn-storedashboard) and the Tableau workbook can be downloaded [here](https://github.com/dtan20441/portfolio_online_vs_in-store/blob/main/retail_sales_portfolio.twbx).

The SQL queries used to inspect, clean and prepare data for the dashboard can be found [here](https://github.com/dtan20441/portfolio_online_vs_in-store/blob/main/retail_sales.sql). 

## Data Structure & Initial Checks
Goober's data consists of 1 table that has 12,575 records.  
![Schema](https://github.com/dtan20441/portfolio_online_vs_in-store/blob/main/Screenshots/Schema.png)

## Insights
### Overview of findings
From January 1, 2022 to January 18, 2025, total revenue exhibited no consistent upward or downward trend. Online purchases generated **$30,734 more revenue** than in-store transactions, with online orders also recording an **average order value $1 higher** than in-store purchases.

Across most product categories, revenue contributions skew toward the online channel, accompanied by higher discount usage and slightly higher median purchase frequency. Collectively, these findings indicate stronger customer engagement within the online sales channel.

### Sales trend analysis
- Sales across both channels fluctuate month-to-month, with neither channel consistently outperforming the other throughout the observed period.
- In-store sales display signs of seasonality, with recurring peaks in January, potentially linked to holiday-driven shopping behaviour.
- Monthly revenue for both channels generally ranges between **$16k and $27k**, indicating relatively stable demand levels.
- A decline observed from December 2024 onwards is likely attributable to incomplete data coverage rather than reduced performance.
  
![Sales trend graph](https://github.com/dtan20441/portfolio_online_vs_in-store/blob/main/Screenshots/sales%20trend.png)

### Product category comparison
- **Butchers, Beverages, Computers and Electronics, Food, Milk Products, and Electric Household Essentials generate higher revenue through the online channel**, indicating stronger online channel performance across these categories.
- A substantial **revenue discrepancy** exists within Computers and Electronics, where online sales exceed in-store revenue by **$16,405**, suggesting significantly higher online channel adoption for this category.
- Revenue differences between channels are relatively small for Beverages ($996) and Patisserie ($664), indicating these categories are largely channel-agnostic, with comparable performance across online and in-store sales.
  
![Product category comparison graph](https://github.com/dtan20441/portfolio_online_vs_in-store/blob/main/Screenshots/category%20comparison.png)

### Discount effectiveness
- **Butchers, Electric Household Essentials, and Milk Products record higher discount volumes online** (differences of 31, 34, and 38 respectively), alongside higher online revenue. This relationship suggests that online discounting strategies may be contributing positively to sales performance within these categories.
- **Beverages, Food, and Furniture receive more discounts in-store** (differences of 11, 11, and 9 respectively). However, online revenue remains higher for Beverages and Food, indicating that increased in-store discounting does not correspond with stronger in-store sales outcomes.
- The persistence of stronger online revenue despite higher in-store discount activity may indicate greater baseline demand within the online channel or reduced effectiveness of in-store promotional strategies.
  
![discount graph](https://github.com/dtan20441/portfolio_online_vs_in-store/blob/main/Screenshots/discounts%20applied.png)

### Customer behaviour 
- Online customers demonstrate slightly higher engagement, with a median purchase frequency of **244 transactions** compared to **234 transactions** for in-store customers.
- The identical interquartile range of **17 purchases** across both channels suggests similar variability in purchasing behaviour among the middle 50% of customers.
  
![customer behaviour graph](https://github.com/dtan20441/portfolio_online_vs_in-store/blob/main/Screenshots/purchase%20frequency.png)

## Recommendations
- Periods of elevated sales observed across both channels should be **further investigated to identify potential drivers** (e.g. seasonal demand or promotional activity). Replicating successful conditions or introducing time-limited seasonal promotions may help sustain higher revenue levels.
- Look to increase online revenue for Butchers, Beverages, Computers and electronics, Food, Milk Products, and Electric household essentials through **investment in online ads, digital promotions and/or user experience** since these categories have higher online demand.
- Categories where higher discount volumes do not correspond with improved sales performance should undergo **promotional effectiveness review**. For example, Beverages and Food receive more in-store discounts despite stronger online revenue performance. Alternative in-store strategies, such as product sampling or store-exclusive bundles, may be tested to improve in-store conversion and purchase frequency.
- **Targeted campaigns such as subscription models, loyalty programs or personalised offers should be considered for online shoppers** to encourage repeat purchasing.
