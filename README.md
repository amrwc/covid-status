# COVID Status

A Bash script scraping Johns Hopkins University's (JHU) databases for data
related to the COVID-19 pandemic. It retrieves the key details about the
country supplied in the command-line arguments.

The script was inspired by JHU's [Coronavirus COVID-19 Global Cases project][global_cases_project].
The data is taken from their [daily reports available on GitHub][daily_reports].

<p align="center">
    <img src="./assets/covid-status-preview.svg">
</p>

## Usage

```bash
$ covid [location] [date/'recent']
```

| Argument     | Description                                                                                                                                                       |
| ------------ | ----------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| **location** | Location/country. For instance, `France` has multiple entries. Specific locations,<br />such as `French Polynesia`, are also supported.                           |
| **date**     | Date in `MM-DD-YYYY` format.                                                                                                                                      |
| **recent**   | Can be used instead of specific date to retrieve most recent<sup>[[1]][footnote_01]</sup> data.<br />This is the default behaviour when no date was is specified. |

Examples:

```bash
$ covid US
$ covid Russia 04-13-2020
$ covid Germany recent
$ covid 'French Polynesia'
```

## Setup

To use the script from anywhere, you can set it up using `make`:

```bash
$ cd covid-status
$ make
```

It will create a symlink to the script inside `/usr/local/bin/`.

<hr />

<sub>
    <p id="footnote_01">
        [1]: Usually, the most recent data is from two days ago.
    </p>
</sub>

[daily_reports]: https://github.com/CSSEGISandData/COVID-19/tree/master/csse_covid_19_data/csse_covid_19_daily_reports
[footnote_01]: #footnote_01
[global_cases_project]: https://gisanddata.maps.arcgis.com/apps/opsdashboard/index.html#/bda7594740fd40299423467b48e9ecf6
