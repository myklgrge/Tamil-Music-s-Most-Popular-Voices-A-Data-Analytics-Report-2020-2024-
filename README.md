
# 🎵 Tamil Music Streaming Analysis (2020–2024)

##  Overview

This project explores the **streaming trends of Tamil songs from 2020 to 2024**, focusing on the **gender of the singers** behind the most-streamed tracks. It was born out of curiosity:  
> *Who sings the songs we hear the most — and are there noticeable patterns across male, female, and duet-led tracks?*

##  Key Highlights
- ✅ Explored 250 top-streamed Tamil songs across 5 years
- ✅ Classified singers by gender (Male, Female, Duet)
- ✅ Analyzed song popularity using SQL
- ✅ Visualized patterns and insights using Tableau
- ✅ Cleaned & prepared raw data using Python

## 📂 Repository Structure

```
📁 Tamil-Music-Streaming-Analysis/
├── 📄 README.md
├── 📂 data/
│   ├── top_50_2020.csv
│   ├── top_50_2021.csv
│   ├── top_50_2022.csv
│   ├── top_50_2023.csv
│   └── top_50_2024.csv
├── 📂 cleaned_data/
│   └── all_songs_cleaned.csv
├── 📂 python/
│   └── data_cleaning_exploding.ipynb
├── 📂 sql/
│   ├── gender_split_by_year.sql
│   ├── avg_popularity_by_gender.sql
│   ├── top_song_each_year.sql
│   └── high_pop_songs_by_gender.sql
└── 📂 tableau/
    └── dashboard_screenshots/
```

##  Tech Stack

| Tool        | Purpose                           |
|-------------|-----------------------------------|
| **Python**  | Data cleaning, transformation     |
| **Pandas**  | Handling CSVs & exploding data    |
| **SQL (MySQL)** | Querying and analysis          |
| **Tableau** | Data visualization & storytelling |
| **Excel**   | Initial raw data filtering        |

## 📸 Project Output  
🔗 [View the Interactive Dashboard on Tableau Public](<div class='tableauPlaceholder' id='viz1752337955706' style='position: relative'><noscript><a href='#'><img alt='Dashboard 1 ' src='https:&#47;&#47;public.tableau.com&#47;static&#47;images&#47;St&#47;StreamingTrendsinTamilSongsAGender-BasedAnalysis&#47;Dashboard1&#47;1_rss.png' style='border: none' /></a></noscript><object class='tableauViz'  style='display:none;'><param name='host_url' value='https%3A%2F%2Fpublic.tableau.com%2F' /> <param name='embed_code_version' value='3' /> <param name='site_root' value='' /><param name='name' value='StreamingTrendsinTamilSongsAGender-BasedAnalysis&#47;Dashboard1' /><param name='tabs' value='no' /><param name='toolbar' value='yes' /><param name='static_image' value='https:&#47;&#47;public.tableau.com&#47;static&#47;images&#47;St&#47;StreamingTrendsinTamilSongsAGender-BasedAnalysis&#47;Dashboard1&#47;1.png' /> <param name='animate_transition' value='yes' /><param name='display_static_image' value='yes' /><param name='display_spinner' value='yes' /><param name='display_overlay' value='yes' /><param name='display_count' value='yes' /><param name='language' value='en-US' /></object></div>                <script type='text/javascript'>                    var divElement = document.getElementById('viz1752337955706');                    var vizElement = divElement.getElementsByTagName('object')[0];                    if ( divElement.offsetWidth > 800 ) { vizElement.style.width='100%';vizElement.style.height=(divElement.offsetWidth*0.75)+'px';} else if ( divElement.offsetWidth > 500 ) { vizElement.style.width='100%';vizElement.style.height=(divElement.offsetWidth*0.75)+'px';} else { vizElement.style.width='100%';vizElement.style.height='977px';}                     var scriptElement = document.createElement('script');                    scriptElement.src = 'https://public.tableau.com/javascripts/api/viz_v1.js';                    vizElement.parentNode.insertBefore(scriptElement, vizElement);                </script>)

##  Project Takeaways

This was my **very first data analysis project**, created to move beyond tutorial-based learning and showcase real-world skills.  
My key goals were:
- ✅ Practice data wrangling and SQL queries
- ✅ Learn how to structure and tell a story with data
- ✅ Build a portfolio-ready project from scratch

##  Feedback Welcome!

If you have suggestions, questions, or want to collaborate, feel free to [reach out](mailto:your_email@example.com) or open an issue!
