## Project Background

Goober is a retail company that offers a variety of products from pastry to furnitures through its physical stores and online website. 

The company has data from January 1st 2022 to January 18th 2025 regarding product categories, revenue, their 25 customers and, store location (online and in-store) that this project will analyse to uncover insights to ensure future business success.

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
From January 1st 2022 to January 18th 2025, revenue showed no trend and online purchases raised $30,734 more than in-store purchases. Furthermore, the average order value of online sales was 1 higher than those in-store.

Online sales appear to be superior to in-store purchases, with majority of categories leaning towards online, more discounts being applied in that channel, and online customers having a higher median purchase frequency.

### Sales trend analysis
- Sales from both channels **fluctuate heavily** between months, with neither consistently outperforming the other across the entire period the data was collected.
- **In-store sales demonstrate some seasonality with its peaks occurring during January**, indicating that holidays prompts customers to shop in-store.
- Majority of the time, online and in-store sales hovered between around $16k and $27k, indicating fairly **stable demand**.
- From December 2024, sales from both channels experienced a **sharp drop** but this can be attributed to the **incompleteness of the data** as the dataset ends mid-January.
  
![Sales trend graph](https://github.com/dtan20441/portfolio_online_vs_in-store/blob/main/Screenshots/sales%20trend.png)

### Product category comparison
- **Butchers, Beverages, Computers and electronics, Food, Milk Products, and Electric household essentials lean more towards online sales** — suggesting customers prefer to purchase these online.
- There is a **considerable descrepancy between online and in-store revenue for Computers and electronics**, with a difference of $16,405. The large online skew suggests customers prefer the convenience of online ordering that allows for better price comparisons and may contain wider product choice.
- Beverages have a sales difference of $996 between channels and Patisserie has a smaller difference of $664. The similar level of sales between online and in-store imply that these categories are channel-agnostic.
  
![Product category comparison graph](https://github.com/dtan20441/portfolio_online_vs_in-store/blob/main/Screenshots/category%20comparison.png)

### Discount effectiveness
- **Butchers, Electric household essentials, and Milk Products stand out with higher discount volumes online** than in-store with differences of 31, 34, and 38 respectively. These categories' revenue from online sales are greater than in-store, indicating that the discounts are effective.
- **Beverages, Food and Furniture are the only categories with more discounts applied in-store**, with a difference of 11, 11, and 9 respectively compared to online. This could mean Goober is providing more enticing in-store discounts to encourage the purchase of larger quantities or more expensive products in these categories.
- Despite more discounts applied in-store for Beverages and Food, online sales generate more revenue, implying that **customers may genuinely prefer shopping online regardless of in-store promotions or the discount is ineffective**.
  
![discount graph](https://github.com/dtan20441/portfolio_online_vs_in-store/blob/main/Screenshots/discounts%20applied.png)

### Customer behaviour 
- **Online customers edge out in-store customers for shopping frequency**, with online customers typically making 244 purchases (the median) from January 1st 2022 to January 18th 2025 compared to in-store's 234, suggesting that online customers are more engaged.
- **The interquartile range (box length) is equal across both channels** with 17 purchases, implying that the purchasing behaviour amongst the middle 50% of customers is the same for online and in-store.
  
![customer behaviour graph](https://github.com/dtan20441/portfolio_online_vs_in-store/blob/main/Screenshots/purchase%20frequency.png)

## Recommendations
- The **cause of spike in sales from both channels in certain months should be investigated and replicated** to sustain or improve high levels of sales.
- Look to increase online revenue for Butchers, Beverages, Computers and electronics, Food, Milk Products, and Electric household essentials through **investment in online ads, digital promotions and/or user experience** since these categories have higher online demand.
- **Categories with more discounts applied in one channel but no corresponding increase in sales should have discounts reduced or replaced if the return on investment is too low.** Beverage, Food and Furniture have more in-store discounts yet online sales perform better, implying that the discounts may not be attractive enough. Focus should be on improving in-store experiences such as sampling or have store-exlcusive bundles. 
- **Targeted campaigns such as subscription models, loyalty programs or personalised offers should be considered for online shoppers** as they typically purchase online more often, further strengthening online retention and encourage repeat purchasing. 
