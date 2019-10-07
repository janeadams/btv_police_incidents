import pandas as pd
from datetime import datetime as dt
df = pd.read_csv('incidents.csv')
df=df.drop(columns=['the_geom','cartodb_id'])
df['year']=[str(t[:4]) for t in df['call_time']]
df['month']=[t[5:7] for t in df['call_time']]
df['dayofmonth']=[t[8:10] for t in df['call_time']]
df['exact_time']=[t[11:19] for t in df['call_time']]
df['month']=df['month'].map(
    {'01':'01 January',
     '02':'02 February',
     '03':'03 March',
     '04':'04 April',
     '05':'05 May',
     '06':'06 June',
     '07':'07 July',
     '08':'08 August',
     '09':'09 September',
     '10':'10 October',
     '11':'11 November',
     '12':'12 December'
    })
df['dayofweek']=df['dayofweek'].map(
    {'Monday':'01 Monday',
     'Tuesday':'02 Tuesday',
     'Wednesday':'03 Wednesday',
     'Thursday':'04 Thursday',
     'Friday':'05 Friday',
     'Saturday':'06 Saturday',
     'Sunday':'07 Sunday'
    })
df.to_csv('incidents_cleaned.csv')