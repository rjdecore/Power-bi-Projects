# Adventure Works Sales & Returns Dashboard — Power BI

## Business objective
Analyze sales performance across time, geography, products and customers, while reviewing return activity to support commercial and operational decisions.

## Dashboard-reported metrics
- **Revenue:** $24.9M
- **Previous-year revenue KPI:** $9.36M
- **Orders:** 25K+
- **Customers:** 18K
- **Products:** 293
- **Returned units:** 1,828
- **Return rate:** 2.17%

## Findings visible in dashboard previews
- The executive overview attributes approximately **$23.6M (94.88%)** of the displayed revenue to Bikes. Accessories are labelled approximately **$0.9M (3.64%)**; the remaining category share is comparatively small in this view.
- The return-detail table shows an overall **1,828 returned units** and a **2.17% return-rate KPI**.
- The visible product return table includes **Road-650 Red, size 52** at a displayed return rate of **11.76%**; several Mountain-100 and Touring-2000 variants also appear among the higher return-rate rows. These are candidates for investigation, not proof of a product defect.
- The visible yearly revenue chart shows approximately $6.4M in 2015, $9.3M in 2016 and $9.2M for the displayed 2017 period. The 2017 bar covers only the selected date range through June 2017, so it is not a full-year comparison.

## Analysis questions
- How does revenue move across the available 2015–2017 period?
- Which products, categories, customers and territories contribute most revenue?
- Which products or categories have higher return activity?
- How do orders and customer patterns change over time?
- Where do sales contribution and return behavior diverge?

## Business recommendations
1. Because Bikes dominate the displayed revenue mix, track category concentration and review Accessories/Clothing opportunities alongside their margins and demand.
2. Investigate high-return-rate product variants by order volume, return reason and time period before recommending product or supplier changes.
3. Compare full-year periods or use a matching year-to-date window when evaluating 2017 against 2015/2016.
4. Validate the return-rate denominator and active report filters before presenting it as an operational benchmark.

## Report artifacts
- [Executive overview](p1.png)
- [Sales analysis / product drill-through](p2.png)
- [Returns and customer analysis](p3.png)
- [Exported dashboard PDF](AW-Report-file_custom.pdf)
- [Interactive Power BI report](AW-Report-file_custom.pbix)
- [Supporting presentation](Adventure_Works_Cycles_Dashboard_Analysis.pptx)

## Tools and techniques
Power BI Desktop, Power Query, DAX, data modeling, time-based analysis, KPI cards, ranking, geography and returns analysis.
