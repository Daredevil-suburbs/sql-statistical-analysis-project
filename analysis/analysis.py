import pandas as pd
import matplotlib.pyplot as plt
import seaborn as sns
import os

# Set working directory to the script's location
os.chdir(os.path.dirname(os.path.abspath(__file__)))

# load dataset
df = pd.read_csv("../dataset/transactions.csv")

print("Dataset Preview")
print(df.head())

# descriptive statistics
stats = df.describe()
print("\nDescriptive Statistics")
print(stats)

# correlation matrix
corr = df.corr(numeric_only=True)
print("\nCorrelation Matrix")
print(corr)

# create charts folder
os.makedirs("../results/charts", exist_ok=True)

# histogram of transaction amounts
plt.figure()
sns.histplot(df["amount"], bins=10)
plt.title("Transaction Amount Distribution")
plt.savefig("../results/charts/amount_distribution.png")

# age vs transaction amount
plt.figure()
sns.scatterplot(x="customer_age", y="amount", data=df)
plt.title("Customer Age vs Transaction Amount")
plt.savefig("../results/charts/age_vs_amount.png")

# boxplot for outliers
plt.figure()
sns.boxplot(y=df["amount"])
plt.title("Transaction Amount Outliers")
plt.savefig("../results/charts/outliers.png")

print("\nCharts saved in results/charts")