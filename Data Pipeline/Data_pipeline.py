import pandas as pd

def process(df):
    # drop name null
    df = df[df['name'].notna()].copy()
    # convert price to numb
    df['price'] = pd.to_numeric(df['price'], errors='coerce')
    # split name to first and last
    df[['first_name', 'last_name']] = df['name'].str.split(' ', 1, expand=True)
    # drop name
    df = df.drop('name', 1)
    # rearrange column
    df = df[['first_name', 'last_name', 'price']]
    return df

def output(df1, df2):
    df = df1.append(df2)
    return df.to_csv('final.csv', encoding='utf-8', index=False)

ds1 = pd.read_csv('./Data/dataset1.csv')
ds2 =  pd.read_csv('./Data/dataset2.csv')

ds1 = process(ds1)
ds2 = process(ds2)
output(ds1, ds2)