import pandas as pd
s = pd.date_range("2010-012-10 10:55", "2015-05-11 11:10", freq="1min")
#pd.to_datetime(s, format='%d/%m/%Y/%H/%M')
dates = s.to_pydatetime()
for i in dates:
    print 'http://*/raw/channel/' + i.strftime('%Y/%m/%d/%H/%M') + '.ts'
