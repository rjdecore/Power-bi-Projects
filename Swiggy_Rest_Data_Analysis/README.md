# Restaurant Data Analysis — Power BI

## Project summary

An interactive report for exploring restaurant distribution, cuisine mix, ratings, online delivery, table booking and geographic patterns across markets.

**Tools:** Power BI Desktop, Power Query, DAX and geospatial visuals.

## Business questions

- Which cuisines appear most frequently in the dataset?
- Which cities and countries have the highest restaurant counts?
- How do restaurant ratings and votes vary across markets?
- What share of listed restaurants support online delivery or table booking?

## Reported metrics — reconciliation required

The current README lists the following values, but they should **not be treated as verified until reconciled against the PBIX and source data**:

| Metric | README value |
|---|---:|
| Restaurants | 1,098 |
| Cities | 81 |
| Countries | 15 |
| Average rating | 2.92 |
| Votes | 193K |
| Cuisines | 377 |

The currently committed dashboard preview appears to show different values (818 restaurants, 77 cities, 15 countries, 2.77 average rating, 111K votes and 294 cuisines). This is an unresolved inconsistency between the documentation and preview. Possible causes include different data versions, filters, or a stale screenshot; the available materials do not establish which is correct.

**Do not quote either set of numbers as a confirmed finding until the source data, report filters and exported PDF/PBIX are checked.**

## Analysis areas

- Cuisine mix and distribution
- City/country restaurant counts
- Ratings and votes
- Online delivery and table booking
- Geographic restaurant distribution

## Validation checklist

1. Identify the exact source file and row count used by the PBIX.
2. Check whether restaurant counts use distinct restaurant IDs or raw rows.
3. Confirm the definition of average rating and treatment of unrated records.
4. Recalculate total votes and cuisine count from the model.
5. Reset report/page/visual filters and reconcile the displayed KPIs with the README.
6. Export a fresh PDF and replace the preview only after the values match.

## Tech stack

**Power BI Desktop | DAX | Power Query | Geospatial Analysis | Restaurant Analytics**
