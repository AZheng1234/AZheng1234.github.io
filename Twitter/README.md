### GITHUB PAGE-IN PROGRESS
### Project is complete but currently editing Readme file

<p float="left">
  <img src="./Images/Tesla Logo.png" width = "400"/>
  <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS4n_urpJ9XpwOTdzBVbGvactwHrPagYQrTJPYjxfxLGkSyu7nJZVqRVGAeohnPgKMrnKE&usqp=CAU" width = "175px" height = "150px"/> 
</p>

## Hi! Welcome to my project about predicting stock prices with social media. 
### I'll walk you through my process of exploring the relationship between Elon Musk's Tweets and TSLA stock price.

### Skills Used:
* Excel/Google Sheets
* R/RStudio

### Contents (click to skip to each section)
* [15-minute Video Summary](#video)
* [Introduction and Purpose of Project](#intro)
* [Dataset Sources](#dataset)
* [Analysis in R](#r)
* [Findings & Conclusion](#conclusion)

<br>

<a name = "video"></a>
### If you don't want to read about the details on Github, here is a video I made for this project.
<br>

[<img src="./Images/Video.PNG" width = "700">](https://youtu.be/PrgOsxHKx6Y) 

<br>

### If you would rather read a more formal paper, you can read it using the link below. You will have to download to view the docx file.
### [Formal Report](https://github.com/AZheng1234/AZheng1234.github.io/blob/main/Twitter/Report.docx)

<br>

<a name = "intro"></a>
## <ins> Introduction and Purpose of Project </ins>

I first came across the idea for this project in my Business Analytics course back in 2021. Although I did well on that project, I had barely scratched the surface when it came to the analytical techniques I could have used. So, when I had a chance to revisit it in my special topics course, Business Analytics II, I refined many of the ideas and took the analysis much further.

I recently became extremely interested in investing and the results of this project could help noob investors like me that don't want to blindly follow random advice.

### Question to answer: Can Elon Musk's Tweets predict TSLA stock prices?

### Business case:
* Semi-strong market efficiency: stock prices reflect all historical data and all public data
* Anatomy of a Tweet
* Tweet content ---> news and potential insider info?
* Likes, replies, retweets ---> reaction of the market
* This could potentially be a great tool for investors

### Recent Examples

[Eli Lilly and Fake Tweet](https://www.fiercepharma.com/marketing/eli-lilly-hit-new-twitter-blue-fake-account-forced-apologize-over-free-insulin-tweet)

<p float="left">
<img src = "https://live-production.wcms.abc-cdn.net.au/403a354bce1611209de535709efbf2dc?impolicy=wcms_crop_resize&cropH=642&cropW=1141&xPos=26&yPos=0&width=862&height=485" height = "300">
<img src = "https://thehustle.co/wp-content/uploads/2022/11/HS-News-Brief_2022-11-15T004910.531Z-1024x1024.png" height = "300">
 </p>

#### Effect: $15 Billion loss in market capitalization and Eli Lilly left Twitter platform















<a name = "dataset"></a>
## <ins> Dataset Sources </ins>
My original unrefined data source can be found on Kaggle in the link below:

### [Kaggle Dataset](https://www.kaggle.com/datasets/vidyapb/elon-musk-tweets-2015-to-2020?resource=download)

Of course, I had to do a bit of data cleaning before I was able to use it. This included:
* eliminating variables that I didn't need
* ensuring data types were correct

### There's a lot I have yet to explain about my data, but here is the full spreadsheet (with a lot of workspace sheets):
### [Project Data](https://docs.google.com/spreadsheets/d/1TWvQrDUsDOItZikiqc5ZJ7gOpHUUdNHCgzOW9kSWAMI/edit?usp=sharing)
