# Hospital Emergency Room Performance — Power BI

## Business objective
Review emergency-room patient flow, admissions, wait-time performance, referrals, workload peaks and patient satisfaction to identify operational improvement opportunities.

## Dataset and dashboard-reported KPIs
- **9,216 unique patients**, April 2023–October 2024
- **50% admission rate**
- **35.3 minutes average wait**
- **4.99/10 average satisfaction**
- **59.3% attended within 30 minutes**

## Quantitative findings
- The displayed 59.3% within-30-minute rate means **40.7% were not recorded as meeting that threshold**, assuming the KPI uses the full patient denominator.
- Average wait is 35.3 minutes, which is above the 30-minute service threshold; the average alone does not reveal the full wait-time distribution.
- Satisfaction is 4.99/10, leaving a clear reason to inspect wait-time and referral slices alongside experience scores.
- A 50% admission rate makes patient-flow and bed-capacity context relevant, but admission itself is not evidence of an operational failure.

## Analysis questions
- Which days and hours have the highest patient volumes?
- How does the within-30-minute rate vary by time and referral group?
- Which patient groups show different wait-time or satisfaction patterns?
- Where do demand peaks coincide with weaker service-speed metrics?

## Business recommendations
1. Compare day/hour patient volume with wait time and the within-30-minute KPI to identify staffing periods for review.
2. Segment satisfaction by wait-time band and referral group before prioritising process changes.
3. Track the within-30-minute rate and average wait together; one is a threshold-based service metric, the other is an average.

These are operational hypotheses from the reported KPIs. Use the report's day/hour and referral visuals to locate the actual pressure points before proposing staffing changes.

## Report artifacts
- [ER dashboard PDF](HOSPITAL%20DASHBORD.pdf)
- [Interactive Power BI report](HOSPITAL%20DASHBORD.pbix)

## Tools
Power BI Desktop, Power Query, DAX, healthcare operations analytics and KPI reporting.
