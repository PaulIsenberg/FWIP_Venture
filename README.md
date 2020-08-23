# FWIP_Venture

UCB Group Project for FWIP

## Team members 
- Fahima Muthuvappa
- Winston Shih
- Irina Tilak
- Paul Isenberg


## [Final Presentation Link](https://docs.google.com/presentation/d/1PDeXMa6CsmYeHFzxoZXlzYagbCNiZJHR1r3bMCuof-s/edit?usp=sharing)

## [Presentation Link With Notes](https://docs.google.com/presentation/d/1Vjvu8A7ygvP2FZ9kXaumQY_xwxbs96nj2aUIT22SuJE/edit#slide=id.g8e5f029eda_0_7)


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
 - Jupyter Notebook
 - PostgreSQL/pgAdmin4
 - Supervised Machine Learning (Logistic Regression, SVM, Random Forest, Neural Network)
 - Backward Elimination technique for featues selection
 - Tableau
 - Slack/Zoom
 - Google Slides

#### Questions We Hope to Answer

With machine learning techniques we would want to know:
 - What attributes lead to a startup success?
With analysis and visualization we would like to find out:
 - What does it take to be successful? Any correlation with:
    - How much time
    - Education level
    - Location
    - Market segment
    - Start year
    - Funding rounds
    - Investments vs Valuation
Our dataset has four statuses:
 - Acquired
 - Operating
 - IPO
 - Closed
Our target (success) - acquired + ipo. We think that it is the most desirable outcome for startups though we also know that operating companies can be equaly successful but not willing to go public or to be acquired. We belive that they are minority and most of startups would want to reach that point. Thus we defined aquired and ipo as indicators of success.


#### Visualizations 

1.  Geography:
     - Bubble map by mega-region
2.  Financial:
     - Bar chart: Investment Rounds by Funding $ Amount
3.  Time
     - A temporal measure of how long companies remained operating (0-6 months, 7-12 months, 1-2 years, 3-5 years, 5+ years)
4. Interactive (map)
     - By Zip Code, hover will display company names
     - [Tableau Link](https://public.tableau.com/profile/paul.isenberg#!/vizhome/Interactive_15976252803120/Dashboard1)
5. Best location to launch a startup
     - [Tableau Link](https://public.tableau.com/profile/irina.tilak#!/vizhome/Book1_15978744576230/Story1?publish=yes)
6. Success rate by degree
7. Prediction
     - Training, testing sets plot as a line chart for best model
     

#### Machine Learning Model

**Preliminary Data Processing:**

We verified primary keys across all tables to establish a baseline form of consistency within the data and to allow joining of tables/dataframes in SQL/Python respectively.
 
After distinguishing all objects we preprocessed and transformed each of them. We collected start and end dates from multiple objects and tables, calculated life span, worked on funding rounds and types and a number of participants, employees degrees (C-level employee), cleaned locations and placed them in regions buckets and so on. As a result of this transformation we have a few clean tables that we merged one by one. 

Due to various inconsistencies within the data, we narrowed our scope to US startups with an inception date of no earlier than 01-01-2000. Binning was used for US regions based off of company locations and the lifespan of each company.

Finally we used all of that as features for our ML algorithms.
All features are categorical so values were encoded.


**Splitting Data:**


Our first ML tested for success, isolating startups with an ‘acquired + ipo’ status and compared to: 
1. If the company sold a product.
2. State
3. Company age
4. Total rounds of funding
5. Total number of participants over all rounds of funding.
6. Market segment

In our second iteration of ML we used a different set of features. Due to many missing values we had to drop a few variables completely. Also, we were able to add some more by extracting additional info from other sources and mapping to our data set. The final set of features was:
1. If the company sold a product.
2. Region
3. Company age
4. Start year
5. C-level employee degree
6. Market segment


It is important to note that multiple different ML models were used before we decided on Logistic Regression. Random Forest, SVM and Neural Networking did not give us any better results. We hoped that Backward Elimination would improve the Machine Learning performance but it did not. Also, after tuning Neural Network we didn't improve the outcome too much and Logistic Regression still showed best results.


**Model Choice:** Logistic Regression


**Limitation:** Potentially oversimplified and tends to not do well with binary data, and more prone to overfit in high dimensional dataset. 


**Benefits:** Simplified, memory efficient, 91% accuracy, 28% precision 




**Results and Conclusion:** We came to the conclusion that our dataset is not suitable for Machine Learning prediction. 
Machine Learning works like the human brain, just faster. It is quite hard for experts to determine which one is successful. That's why we were unable to produce results with higher accuracy and precision level more than 28%. 
Moreover, there is a chance that Logistic Regression is outperforming due to its simplicity. And it is prone to overfitting in high dimensional datasets.


Some things we can look into if we were to further our investigation include what type of product was in demand and why. For example, why is there a greater success rate in startups that focus on software as opposed to startups that focus on the news or hardware. Were there any economic events, such as the dotcom bubble or the recession of 08-09 that impacted the companies? And finally, some things that can not be quantified by machine learning that definitely influence the success of a company are the people. We have information on the C-level employees but who else on the team was a driving force for the startup? Who was great at networking or was a veteran to the startup world and knew how to work the market in their favor? Until there is a way to catergorize or encode these softskills, it will be difficult to predict the success of a startup via Machine Learning. 

