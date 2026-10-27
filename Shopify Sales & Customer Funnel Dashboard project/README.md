# Shopify Sales & Customer Funnel — Power BI

## Business objective
Understand sales performance, product mix, payment-gateway mix, customer purchase frequency and regional sales patterns in the supplied transaction window.

## Dashboard-reported KPIs
- **Net Sales:** $4,180,874
- **Total Quantity:** 7,534
- **Net Average Order Value:** $562.6
- **Total Customers:** 4,431
- **Single-order customers:** 2,392
- **Repeat customers:** 2,039
- **Repeat rate:** 46%
- **Customer Lifetime Value (dashboard label):** $943.6
- **Purchase frequency:** 1.68

## Findings visible in the dashboard preview
- Repeat customers are **2,039 of 4,431 customers**, or approximately **46.0%**, consistent with the displayed repeat-rate KPI. Single-order customers account for the remaining 54.0%.
- The visible net-sales trend ranges from approximately **$0.53M to $0.68M** across the seven displayed day labels; the highest visible point is $0.68M at label 24, and the lowest is $0.53M at labels 18 and 23.
- Payment mix is led by **Shopify Payments (52%)**, followed by PayPal (20%), gift card (19%) and Amazon Payments (7%) in the displayed overview.
- Product-type quantity is led by **Running Shoes (~2.1K)**, followed by Tennis Shoes (~1.4K), Walking Shoes (~1.0K) and Cycling Shoes (~0.8K).

## Technical audit finding from the transaction-detail preview

The detail preview shows the displayed **Customer Id as 1 across multiple different customer names**. If that is the actual underlying column value rather than a visual/sample artifact, it is a data-model or source-key problem: customer counts, repeat-customer classification and purchase-frequency calculations may be unreliable. Verify Customer Id uniqueness and its relationship to the transaction table in the PBIX before presenting the customer KPIs as fully validated.

## Business interpretation
The dashboard suggests a substantial repeat-customer segment and a concentration of payments through Shopify Payments. Product-type quantities show which types account for more units in this view; they do not by themselves show profit contribution.

The supplied project notes describe a **one-week transaction window**. The $943.6 “Lifetime Value” label should not be presented as a validated long-term CLV forecast without verifying the measure formula and observation window. Likewise, purchase frequency should be explained using the actual calculation and date range.

## Business recommendations
1. Investigate repeat-customer behavior by product type and payment method, using a longer observation period before proposing retention changes.
2. Review daily sales dips and peaks with order count and average order value to distinguish volume from basket-size effects.
3. Compare product-type sales with margin, returns and stock before prioritising assortment.
4. Verify the CLV and purchase-frequency definitions in the PBIX before using them for customer-value forecasts.

## Report artifacts
- [Dashboard overview preview](d1.png)
- [Transaction detail preview](d2.png)
- [Interactive Power BI report](Shofify%20Dashboard.pbix)
- [Exported dashboard PDF](Shofify%20Dashboard.pdf)
- [Supporting presentation](Shopify%20PPT.pptx)
- [Data terminology reference](Shopify%20-%20Data%20Terminology.docx)

## Tools
Power BI Desktop, Power Query, DAX, KPI cards, trend analysis, payment mix, product segmentation and geographic reporting.
