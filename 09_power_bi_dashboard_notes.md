# Power BI Sales Dashboard - Day 4
**Date:** August 25, 2026
**Tool:** Microsoft Power BI Desktop
**File:** Sales_Dashboard.pbix

## Dashboard Overview
Interactive business intelligence dashboard for sales analysis.

## Components

### 1. Slicer (Interactive Filter)
- **Field:** Region (North, South, East, West)
- **Function:** Filters all charts based on selection
- **Use:** Click region → charts update instantly

### 2. Column Chart
- **Title:** Sum of Sales by Month
- **X-axis:** Month (Jan, Feb, Mar, Apr)
- **Y-axis:** Sales amount (0K-100K)
- **Data:** All products and regions
- **Insight:** April is best month (89.5K)

### 3. Pie Chart
- **Title:** Sum of Sales by Region
- **Data:** Regional breakdown of total sales
- **Key Finding:** 
  - North: 198K (65.02%) - DOMINANT
  - West: ~62K
  - East: 27K (8.7%)
  - South: ~18K

## Key Metrics
| Metric | Value |
|--------|-------|
| Total Sales | 304,500 |
| Best Month | April (89,500) |
| Worst Month | January (63,000) |
| Highest Region | North (198,000) |
| Highest Region % | North (65.02%) |
| Number of Regions | 4 |
| Number of Months | 4 |

## Interactive Features
✅ **Region Slicer** - Filter by North/South/East/West
✅ **Dynamic Charts** - Update based on slicer selection
✅ **Professional Design** - Clean, readable layout
✅ **Color Coding** - Different colors for each region

## Business Insights
1. **North Dominance:** North region drives 65% of revenue - focus marketing here
2. **Monthly Trend:** Sales trend upward (Jan→Apr), April peak at 89.5K
3. **Regional Strategy:** South has lowest sales despite high quantity - product mix issue
4. **Growth Pattern:** Consistent growth across most months

## Technical Skills Demonstrated
- ✅ Data import from Excel
- ✅ Chart creation (Column + Pie)
- ✅ Slicer implementation
- ✅ Interactive dashboard design
- ✅ Business analysis

## How to Use This Dashboard
1. Open `Sales_Dashboard.pbix` in Power BI Desktop
2. Click region buttons to filter data
3. Hover over charts to see exact values
4. Analyze patterns and trends
5. Export visualizations for presentations

## File Location
- **Name:** Sales_Dashboard.pbix
- **Size:** ~2 MB
- **Format:** Power BI Desktop file
- **Data Source:** Sales_Analysis_Dashboard.xlsx

## Next Steps
- Add more regions/products
- Create advanced measures (DAX)
- Build KPI cards
- Add drill-through features
- Connect to live database
