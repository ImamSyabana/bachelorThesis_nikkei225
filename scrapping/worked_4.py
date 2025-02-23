import time
from selenium import webdriver
from selenium.webdriver.chrome.service import Service
from selenium.webdriver.chrome.options import Options
from webdriver_manager.chrome import ChromeDriverManager
from selenium.webdriver.common.by import By
from selenium.webdriver.support.ui import Select

# List of months
months = ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec']

options = Options()
options.add_experimental_option("detach", True)

driver = webdriver.Chrome(service=Service(ChromeDriverManager().install()), options=options)
driver.get("https://indexes.nikkei.co.jp/en/nkave/archives/data?list=daily")

# To select the month dropdown
month_dropdown = Select(driver.find_elements(By.TAG_NAME, 'select')[0])

# To select the year dropdown
year_dropdown = Select(driver.find_elements(By.TAG_NAME, 'select')[1])

# To select the view button
view_button = driver.find_element(By.CSS_SELECTOR, 'div > input.btn.btn-primary')

import pandas as pd

# Create an empty list to store the data
data = []

# Iterate over the years
for year in range(1968, 2024):
    # Convert the year to string
    year = str(year)

    # Iterate over the months
    for month in months:
        # Select the year
        year_dropdown.select_by_visible_text(year)

        # Select the month
        month_dropdown.select_by_visible_text(month)

        # Click the view button
        view_button.click()

        # Wait for the page to load
        time.sleep(4)

        # Locate the table
        table = driver.find_element(By.CLASS_NAME, 'idx-extend')

        # Get all the rows in the table
        rows = table.find_elements(By.TAG_NAME, 'tr')

        # Iterate over each row
        for row in rows:
            # Get the columns in each row
            columns = row.find_elements(By.TAG_NAME, 'td')

            # Iterate over each column
            for column in columns:
                # Print the text in each column
                print(column.text)

            # Check if the row is not empty
            if columns:
                # Get the text in each column
                date = columns[0].text
                open_price = columns[1].text
                high_price = columns[2].text
                low_price = columns[3].text
                close_price = columns[4].text

                # Append the data to the list
                data.append([date, open_price, high_price, low_price, close_price])


# Create a DataFrame from the data
df = pd.DataFrame(data, columns=['Date', 'Open', 'High', 'Low', 'Close'])

# Save the DataFrame as a CSV file
df.to_csv('Nikkei225_daily.csv', index=False)

