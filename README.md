# Power BI Business Analytics Portfolio

A collection of Power BI projects focused on business reporting, sales performance, customer behavior, operations, healthcare, HR, retail and service analytics.

**Primary tools:** Power BI Desktop · Power Query · DAX · Data Modeling · Excel · SQL

## Featured projects

The project READMEs connect each dashboard to business questions, report-visible findings and practical decisions. KPI values are transcribed from available report artifacts; technical audit findings are called out separately when the report layout or preview reveals a calculation or modeling issue.

| Project | Business focus | Why review it |
|---|---|---|
| [Plant Company Performance](Plant_co_Performance_Analysis/) | YTD/PYTD performance, gross profit, product and country analysis | Management reporting and variance analysis |
| [Shopify Sales & Customer Funnel](Shopify%20Sales%20%26%20Customer%20Funnel%20Dashboard%20project/) | Sales, customer repeat behavior, product mix, payments and geography | Sales mix, repeat purchasing and a PBIX detail-table aggregation audit |
| [AdventureWorks Sales](AWS%20Sales%20Project/) | Revenue, orders, customer/product performance and returns | Category concentration, return-rate review and time comparisons |
| [Hospital Emergency Room](Hospital_Data/) | Patient volumes, waiting times, satisfaction and referrals | Operational KPI reporting |
| [Uber Trip Detail](Uber_Trip_Detail/) | Bookings, booking value, distance, time and location | Time-based operations analysis |
| [Pizza Sales SQL + Power BI](Pizza_Sales_Dashboard_Sql_Powerbi/) | Revenue, orders, quantity, product mix and day/time patterns | End-to-end SQL-to-dashboard workflow |
| [HR Attrition](Hr_Analysis_Dashboar/) | Attrition, age, salary, tenure and job role | People analytics |
| [Call Centre Trends](call_centre%20anyalsis/) | Answered/resolved calls, satisfaction and agent metrics | Service operations reporting |

## Analytics workflow

1. Define the business question and data grain.
2. Profile missing values, duplicates, data types and key uniqueness.
3. Prepare data in Power Query and document transformations.
4. Validate model relationships, filter direction and date-table behavior.
5. Reconcile DAX measures against source totals or independent calculations.
6. Check visual field summarization, units, labels, slicers and filter interactions.
7. Explain findings and the recommended business action in plain language.

## Skills represented

- Power Query transformations and data cleaning
- Data modeling and relationship design
- DAX measures and KPI calculations
- Time-based comparisons and performance tracking
- Drill-through, bookmarks, dynamic measure selection and tooltips where implemented
- Visual analytics, segmentation and geographic reporting

## Technical review notes

- A dashboard screenshot can support report-visible findings; the PBIX is needed to inspect measures, relationships, field aggregation and filter behavior.
- In the Shopify PBIX, the transaction-detail visual currently sums Order Number and ZIP Code and uses CountNonNull for Customer Id. The project README documents the correction: use identifier fields as non-summarized columns.
- For customer lifetime value, repeat rate and purchase frequency, the measure formula and observation window must be verified before interpreting the metric as a long-term forecast.
- Forecasts and descriptive trends support planning; they do not guarantee future results or establish causation.

## How to review a project

Open the project README for its objective, findings and business recommendations. Use the PDF/screenshots for report-visible evidence and the PBIX/source data to validate DAX calculations, model relationships and filter behavior.
