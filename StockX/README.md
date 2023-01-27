<img src="./Images/StockX-Logo.png" width=50% height=50%>

## Hi! Welcome to my project about StockX. 
### I'll walk you through my process of exploring Stock's database and ER diagram structure and using SQL to query and solve business problems.

### Skills Used:
* Excel/Google Sheets
* Python
* SQL

### Contents (click to skip to each section)
* [Entity-Relationship Diagram](#erd)
* [Creating the Dataset](#dataset)
* [Continuing with Python](#python)
* [SQL Queries](#sql)

#### For those unfamilar with StockX, it is an anonymous online marketplace that mimics the stock market, except it sells luxury or limited edition sneakers, accessories, apparel, electronics, and more. StockX provides verification services to make sure products are genuine and not a cheap imitation, and earns commissions on sales.
#### There is full transparency on ask prices, bid prices, and ask prices. There are even convenient visualizations on price history as well as your typical stock market data including:
* 12-month trade range
* all-time trade range
* price premium (%)
* volatility
* number of sales
* average sale price

<a name = "erd"></a>
## Let's dive right in!
---
### 1. The first step is to understand StockX's entity-relation diagram.

<img src="./Images/ER Diagram.png">

### To briefly explain the ER diagram, the main entities to take into account are the buyers, sellers, and the products.


#### The Auction entity is the associative entity created by the relationship between the 3 main entities.
* AKA ternary relationship where many Buyers can buy many Products from many Sellers.

#### Products have subtypes to categorize them. For simplicity, I've only included Shoes and Apparel subtypes.
#### The Item entity may be confusing. Here, the important thing to understand is that it is necessary to identify different instances of the same type of shoe.
* RandomBrand-Shoe1 has many "copies" and different sellers may be selling the same shoe model.
* This is similar to a library book having many copies. They would want to track which copy is being borrowed by a certain reader.

#### An Order is made when a Buyer makes a winning bid or when the Buyer meets the ask price.
####
---
<a name = "dataset"></a>
### 2. Next, let's take a look at the tables in detail.

#### Web scraping would have been the easiest way to collect the data, but having tried using Octoparse, I realized that the website (understandably so) protects itself from scraping programs. I will be making a sample database from SCRATCH. This is a good time to practice my spreadsheet skills!

#### I want to make this mock database as realistic as possible and random number generators (RNG) will be VERY useful. 
#### Where should we start?
#### If you want to view the full dataset, open the following link in a new tab.
#### [StockX Project Data](https://docs.google.com/spreadsheets/d/1VxAQSSVYZIjkwwO6W6RQ8l1BCVW3h5S1h9pl-n1kexs/edit?usp=sharing)
#### You will be able to view all of the complex formulas I spent un unnecessary amount of time writing to make this dataset! :D

#### A RNG sheet is included from which I randomly draw data from to create the attributes for other tables. The sheet includes:
* List of all 50 states
* List of all state capitals
* 400 random cities
* Popular email domains
* 107 sample usernames
* 300 street names
* A-Z
* 100 last names (from which usernames was made)
* Apparel sizes (S/M/L/XS/XL/XXL)

##### If you view the RNG sheet, you will notice that the email domains and apparel sizes will be listed more than once at different frequencies. 
* For emails, this is to simulate popularity of the domain, with Gmail, Yahoo, and Outlook being much more popular than domains such as AOL, iCloud, and ATT. 
* For apparel sizes, Medium will be the most common, Small and Large slightly less common, and the X sizes being the least common.


### <ins> Buyer/Seller Tables </ins>
#### As there are 6.5 million buyers on StockX and 1 million sellers, I decided to maintain the 6.5:1 ratio. 130 Buyers and 20 Sellers should do!
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
<br>

#### Emails are slightly harder. There are infinite email addresses but a common pattern is first initial, last name, random number, @domain.
* =CONCATENATE(INDEX('RNG (DELETE LATER)'!$G$1:$G$28, RANDBETWEEN(1,28)), INDEX('RNG (DELETE LATER)'!$E$2:$E$107, RANDBETWEEN(1,106)), RANDBETWEEN(10,999),INDEX('RNG (DELETE LATER)'!$D$2:$D$22, RANDBETWEEN(1,21)))
* The first intial is drawn from A-Z in the RNG sheet. You'll notice I put 1:28, which is to add the chance of someone not using a first initial.
* Draws random username
* Generates random number
* Draws random email domain

<br>

#### Phone number is simple. I generated a random 10-digit number using the following formula:
* =RANDBETWEEN(1000000000, 9999999999)
* Custom number formatting (###)-###-####

<br>

#### Alternate phone number is optional. Around 1/6 people have multiple phones.
* IF(D2=1,CONCATENATE(LEFT(C2,6),RANDBETWEEN(100, 999),"-",RANDBETWEEN(1000,9999)), IFERROR(0/0))
* If RANDBETWEEN(1,6) lands on 1, generate number, otherwise remains blank
* Keeps zip code of main phone number, generates another random number

<br>

#### Street
* =CONCATENATE(RANDBETWEEN(1,9999)," ",INDEX('RNG (DELETE LATER)'!$F$2:$F$301, RANDBETWEEN(1,300)))
* Generate random number, draw street name from RNG sheet
* Ex. 3910 Highland Avenue

<br>

#### State
* Generated first before City, randomly draw from RNG sheet

<br>

#### City
* =IF(G2 = 1, INDIRECT(CONCATENATE("'RNG (DELETE LATER)'!B", MATCH(I2, 'RNG (DELETE LATER)'!$A$2:$A$51)+1)), INDEX('RNG (DELETE LATER)'!$C$2:$C$401, RANDBETWEEN(1,400)))
* Around 1/12 people live in a capital city. Of course, it differs by state but we will use an average for simplicity.
* If RANDBETWEEN(1,12) lands on 1, draw ACCURATE state capital from RNG sheet
* Otherwise, choose random city (may or may not be accurate)

<br>

#### Zip (randomly generated and not accurate)
* =RANDBETWEEN(0,99950)

<br>

### <ins> Products Table </ins>
#### Attributes/Columns:
* Product Name
* Brand
* Retail Price

#### For the products, I merely copy pasted a few products from the front page of the StockX website and pasted it into the spreadsheet. Of course, this still requires cleaning to make sure that the data is in the correct type and format.
* Data cleaning shown on "Sheet 9" and "Sheet 10" of the spreadsheet
