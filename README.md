# FWIP_Venture

UCB Group Project for FWIP

## Team members are
- Winston Shih
- Fahima Muthuvappa
- Irina Tilak
- Paul Isenberg

## Communication Protocol 

Our primary mode of communication is through our Slack group. Through Slack we discuss a good time for all of us to meet over Zoom. Generally we meet about once a day to once very two days. Our Zoom meetings last about an hour to an hour and a half depending on what tasks need to be completed. Through Zoom we were able to establish each person's role on the team. In addition, we have a shared Google Doc where we jot down any notes we have for the project, for each other, and any notes we may have received from the instructors and TA's.


## Presentation Outline

#### Selected Topic   
  
After some extensive searches through Kaggle, we settled on Startup Investments data. The majority of the team has a background in finance and the dataset piqued our interest. In addition, we believe that the dataset is complex and would give us an opportunity to get more experience with the ETL process, and provide good visualizations. Also, we felt that we could apply machine learning technologies after cleaning and merging the data. We want to see if we can predict which companies will be successful and determine which features would contribute to a successful project. The csv’s each have at least one primary key that should allow us to combine the datasets for when we start preprocessing. 

#### Description of Source Data

 - 11 csv’s
 - CSV’s contain
 - Acquisitions
 - IPO’s
 - Degree level of individuals in startup world
 - Funding
 - Location
 - Primary Keys

#### Technologies
 - AWS S3
 - GitHub
 - Jupyter Notebook or Google Colab
 - PostgreSQL/pgAdmin4
 - Supervised Machine Learning
 - Neural Networking
 - Tableau
 - Leaflet
 - Slack/Zoo

#### Questions We Hope to Answer

With machine learning techniques we would want to know:
 - What attributes lead to a startup failure?
With analysis and visualization we would like to find out:
 - What does it take to be successful? Any correlation with:
    - How much time
    - Education level
    - Location
    - Industry
 - ROI for investors
    - Investments vs Valuation

#### Visualizations with Tableau

1.  Geography:
     - Bubble map by mega-region
2.  Financial:
     - Bar chart: Investment Rounds by Funding $ Amount
3.  Time
     - A temporal measure of how long companies remained operating (0-6 months, 7-12 months, 1-2 years, 3-5 years, 5+ years)
4. Interactive (map)
     - By Zip Code, hover will display company names
5. Best location to launch a startup
     - Reason 1 
     - Reason 2
6. Success rate by degree
7. Prediction
     - Training, testing sets plot as a line chart for best model

#### Machine Learning Model

**Preliminary Data Processing:**

We verified primary keys across all tables to establish a baseline form of consistency within the data and to allow joining of tables/dataframes in SQL/Python respectively.
Most categorical values were encoded. We plan on applying a scale of values (0-5) to C-level employee degrees to quantify the categorical values. 


Due to various inconsistencies within the data, we narrowed our scope to US startups with an inception date of no earlier than 01-01-2000. Binning was used for US regions based off of company locations and the lifespan of each company.


**Splitting Data:**


Our first ML tested for acquisitions, isolating startups with an ‘acquired’ status and compared to: 
1. If the company sold a product.
2. Region
3. Company age
4. Total rounds of funding
5. Total number of participants over all rounds of funding.

**Model Choice:** Logistic Regression


**Limitation:** Potentially oversimplified and tends to not do well with binary data, and more prone to overfit in high dimensional dataset. 


**Benefits:** Simplified, memory efficient, 0.977 accuracy (vs DL, SVM, RF 0.96 accuracy)


**Progress:** We will continue to explore into Neural Networks and explore further modeling.






