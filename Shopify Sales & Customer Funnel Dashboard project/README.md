# Shopify Sales & Customer Funnel — Power BI

## Project summary

An interactive sales and customer-behavior dashboard built to explore transaction value, customer purchasing patterns, product mix, payment methods and regional performance.

**Tools:** Power BI Desktop, Power Query, DAX and interactive report features.

## Business questions

- What is the net sales value in the supplied dataset?
- How are customers split between single-order and repeat-order groups?
- Which product types and payment gateways contribute most to sales?
- Which provinces and cities lead on the selected metric?
- How do sales vary by date?
- Which customer metrics can be described reliably from the available observation period?

## Current dashboard metrics

The dashboard currently displays the following values. These are transcribed from the report and have **not yet been independently recalculated from the PBIX/source data**.

| Displayed metric | Current displayed value |
|---|---:|
| Net Sales | $4,180,874 |
| Total Quantity | 7,534 |
| Net Average Order Value | $562.6 |
| Total Customers | 4,431 |
| Single-order customers | 2,392 |
| Repeat customers | 2,039 |
| Repeat rate | 46% |
| Customer Lifetime Value (dashboard label) | $943.6 |
| Purchase frequency | 1.68 |

## Analysis included

### Sales and transaction performance
- Net sales and quantity KPIs
- Daily net-sales trend
- Product-type sales comparison
- Payment-gateway sales mix

### Customer behavior
- Single-order versus repeat-customer counts
- Repeat-rate and purchase-frequency indicators
- Customer-level transaction detail

### Geography
- Province and city views
- Geographic sales distribution
- Ranked city performance

## Power BI techniques shown

The report demonstrates a combination of KPI cards, slicers, trend charts, product/payment breakdowns, geographic visuals and transaction-level detail. The exact implementation of each DAX measure, model relationship and interactive feature still needs validation against the PBIX before it is claimed as verified.

## Business interpretation and limitations

The supplied project documentation says the dataset covers **one week of transactions**. That observation window limits conclusions about long-term customer retention and lifetime value.

In particular, the report currently labels $943.6 as “Customer Lifetime Value.” A one-week transaction extract alone does not establish true lifetime value. Before using this metric in an interview, inspect the DAX definition and either:
- rename it to match what the formula actually measures over the observed period, or
- provide a defensible CLV method and explain its assumptions.

The repeat rate and purchase-frequency metrics also need explicit definitions (numerator, denominator, customer/order grain and date window).

## Dashboard previews

### Executive overview
![Shopify dashboard overview](d1.png)

### Transaction detail
![Shopify transaction detail](d2.png)

## Files

- `Shofify Dashboard.pbix` — Power BI report
- `Shofify Dashboard.pdf` — exported report
- `Shopify PPT.pptx` — supporting presentation
- `Shopify - Data Terminology.docx` — terminology reference
- `d1.png`, `d2.png` — dashboard preview images

## Next validation steps

1. Recalculate the displayed KPIs from the source data.
2. Inspect the DAX definitions for AOV, repeat rate, purchase frequency and the metric labelled CLV.
3. Check that customer counts use the intended unique customer key.
4. Confirm that date and payment filters affect all relevant visuals consistently.
5. Reconcile the README, exported PDF and live PBIX after changes.

