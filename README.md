<img src="StockX-Logo.png" width=50% height=50%>

### Hi! Welcome to my project about StockX. 
### I'll walk you through my process of exploring Stock's database and ER diagram structure and using SQL to query and solve business problems.

#### For those unfamilar with StockX, it is an anonymous online marketplace that mimics the stock market, except it sells luxury or limited edition sneakers, accessories, apparel, electronics, and more. StockX provides verification services to make sure products are genuine and not a cheap imitation, and earns commissions on sales.
#### There is full transparency on ask prices, bid prices, and ask prices. There are even convenient visualizations on price history as well as your typical stock market data including:
* 12-month trade range
* all-time trade range
* price premium (%)
* volatility
* number of sales
* average sale price


## Let's dive right in!
---
### 1. The first step is to understand StockX's entity-relation diagram.

<img src="ER Diagram.png">

### To briefly explain the ER diagram, the main entities to take into account are the buyers, sellers, and the products.


#### The Auction entity is the associative entity created by the relationship between the 3 main entities.
* AKA ternary relationship where many Buyers can buy many Products from many Sellers.

#### Products have subtypes to categorize them. For simplicity, I've only included Shoes and Apparel subtypes.
#### The Item entity may be confusing. Here, the important thing to understand is that it is necessary to identify different instances of the same type of shoe.
* RandomBrand-Shoe1 has many "copies" and different sellers may be selling the same shoe model.
* This is similar to a library book having many copies. They would want to track which copy is being borrowed by a certain reader.

#### An Order is made when a Buyer makes a winning bid, or when the Buyer meets the ask price.
####
---
### 2. Next, let's take a look at the tables in detail.

#### Web scraping would have been the easiest way to collect the data, but having tried using Octoparse, I realized that the website (understandably so) protects itself from scraping programs. I will be making a sample database from SCRATCH. This is a good time to practice my spreadsheet skills!

#### I want to make this mock database as realistic as possible and random number generators (RNG) will be VERY useful. 
#### Where should we start?
#### If you want to view the full dataset, open [this link](https://docs.google.com/spreadsheets/d/1VxAQSSVYZIjkwwO6W6RQ8l1BCVW3h5S1h9pl-n1kexs/edit?usp=sharing) in a new tab.
#### You will be able to view all of the complex formulas I spent un unnecessary amount of time writing to make this dataset! :D

#### A RNG sheet is included from which I randomly draw data from to create the attributes for other tables. The sheet includes:
* List of all 50 states
* List of all state capitals
* 400 random cities
* Popular email domains
* 400 sample usernames
* 300 street names
* 100 last names
* Apparel sizes (S/M/L/XS/XL/XXL)

##### If you view the RNG sheet, you will notice that the email domains and apparel sizes will be listed more than once at different frequencies. 
* For emails, this is to simulate popularity of the domain, with Gmail, Yahoo, and Outlook being much more popular than domains such as AOL, iCloud, and ATT. 
* For apparel sizes, Medium will be the most common, Small and Large slightly less common, and the X sizes being the least common.


### Buyer/Seller Tables
#### Attributes/Columns:
* ID
* Email
* Phone Number
* Alternate Phone Number (optional)
* Street
* City
* State
* Zip

#### ID is very simple to make. I generated a random 4-digit number using the following formula:
* =RANDBETWEEN(1,9999)
* I used custom number formatting (B-0000 and S-0000) to indicate whether it was a Buyer or Seller ID.
* 
