# 📊 Bank Marketing Campaign Analysis
### 📌 Project Objective

The goal of this project is to analyze a bank’s marketing campaign data and identify what factors influence whether a client subscribes to a term deposit. 
The project focuses on turning raw data into business insights and actionable recommendations that can help improve future marketing campaign performance.

### 📂 Dataset

- Source: [UCI Bank Marketing Dataset](https://www.kaggle.com/datasets/jiraleelas/uci-bank-marketing-full-dataset)
- Rows: ~45,000
- Columns: 17
- Target Variable: y (Whether the client subscribed to a term deposit)

### 📂 Dataset context

This dataset comes from the UCI Machine Learning Repository and contains data from a bank’s direct marketing campaigns. 
The campaigns were based on phone calls, and the goal was to predict whether a client would subscribe to a term deposit.
Each row represents a client interaction, and the dataset includes client information (such as age, job, and education) as well as campaign-related information (
such as call duration, number of contacts, and previous campaign outcome).

### 🛠 Tools Used

- Python
- Pandas, NumPy
- Matplotlib, Seaborn
- Jupyter / Google Colab
---
### 🔍 Business Questions

1. Do customer **demographics and profile** affect subscription?
2. Do **campaign-related factors** like call duration and number of contacts influence success?
3. When and **who should the bank target** to improve conversion rate?

---
### 📈 Key Findings

- **Call duration** is the strongest factor related to successful subscription.
- Clients with **higher account balance** are more likely to subscribe.
- **Students and retired clients** show higher subscription rates.
- Clients contacted **too many times** are less likely to subscribe.
- **Month of contact** and **previous campaign outcome** have a strong impact on success.

---
###💡 Business Recommendations

- Focus on high-potential segments **(students, retired, higher balance clients)**.
- Prioritize **quality of calls over quantity.** Fewer, more meaningful calls perform better.
- Run campaigns more actively in **high-performing months**.
- Give **higher priority** to clients with successful previous campaign outcomes.
- Use **data-driven targeting** instead of contacting all clients equally.

---
### 📁Project Structure

Python_Project/
 └── UCI_Bank_Marketing.ipynb
---
### 🚀 How to Run

Open the notebook in Jupyter Notebook or Google Colab and run all cells from top to bottom.

