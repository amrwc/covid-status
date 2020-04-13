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

| Argument     | Description                                                                                                                                                                                                                                                                                         |
| ------------ | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| **location** | Location/country. Defaults to 'World'. Multi-word locations must be wrapped in quotes.<br />Data about countries with multiple locations (e.g. `France`, `United Kingdom`) are<br />combined. Specific locations, such as `French Polynesia`, are still supported, but<br />require the exact name. |
| **date**     | Date in `MM-DD-YYYY` format.                                                                                                                                                                                                                                                                        |
| **recent**   | Can be used instead of specific date to retrieve most recent<sup>[[1]][footnote_01]</sup> data. This is the default<br />behaviour when no date was is specified.                                                                                                                                   |

Examples:

```bash
$ covid world
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
        [1]: Usually, the most recent data is from two days ago due to data update frequency.
    </p>
</sub>

[daily_reports]: https://github.com/CSSEGISandData/COVID-19/tree/master/csse_covid_19_data/csse_covid_19_daily_reports
[footnote_01]: #footnote_01
[global_cases_project]: https://gisanddata.maps.arcgis.com/apps/opsdashboard/index.html#/bda7594740fd40299423467b48e9ecf6
