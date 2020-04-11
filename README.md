# COVID Status

A Bash script scraping Johns Hopkins University's (JHU) databases for data
related to the COVID-19 pandemic. It retrieves the key details about the
country supplied in the command-line arguments.

The script was inspired by JHU's [Coronavirus COVID-19 Global Cases project][1].
The data is taken from their [daily reports available on GitHub][2].

## Usage

```bash
$ covid [country] [date_in_us_format/today]
```

Examples:

```bash
$ covid Russia 04-03-2020
$ covid Germany today
```

[1]: https://gisanddata.maps.arcgis.com/apps/opsdashboard/index.html#/bda7594740fd40299423467b48e9ecf6
[2]: https://github.com/CSSEGISandData/COVID-19/tree/master/csse_covid_19_data/csse_covid_19_daily_reports
