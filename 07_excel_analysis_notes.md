# Excel Sales Analysis - Day 3
**Date:** August 24, 2026
**Tool:** Microsoft Excel
**Dataset:** Sales Data (12 records, 4 months)

## Dataset Overview
- Months: Jan, Feb, Mar, Apr
- Products: Laptop, Mouse, Keyboard, Monitor
- Regions: North, South, East, West
- Total Records: 12 rows

## Formulas Learned

### Basic Formulas
| Formula | Syntax       | Result |
|---------|--------------|--------|
| SUM     | =SUM(C2:C13) | 304500 |
| AVERAGE | =AVERAGE(C2:C13) | 25375 |
| MAX     | =MAX(C2:C13) | 55000 |
| MIN     | =MIN(C2:C13) | 5000 |
| COUNT   | =COUNT(C2:C13) | 12 |

### Conditional Formulas
| Formula | Syntax                        | Result |
|---------|-------------------------------|--------|
| IF      | =IF(C2>30000,"High","Low")    | High/Low |
| SUMIF   | =SUMIF(D2:D13,"North",C2:C13) | 198000 |
| COUNTIF | =COUNTIF(B2:B13,"Laptop")     | 4 |
| VLOOKUP | =VLOOKUP("Laptop",A2:B5,2,FALSE) | 45000 |

## Pivot Table Analysis

### Region wise Sales
| Region | Sales | Quantity |
|--------|-------|----------|
| North  | 198000 | 20 |
| East   | 26500 | 33 |
| South  | 18000 | 75 |
| West   | 62000 | 7 |
| **Total** | **304500** | **135** |

### Month wise Sales
| Month | Sales |
|-------|-------|
| Jan   | 63000 |
| Feb   | 81000 |
| Mar   | 71000 |
| Apr   | 89500 |
| **Total** | **304500** |

## Key Insights from Data
1. North region has HIGHEST sales (198000 = 65% of total)
2. April is BEST month (89500)
3. Laptop drives most revenue (198000)
4. South has HIGHEST quantity (75 units) but LOW sales
5. Mouse is low value, high volume product

## Charts Created
- Bar Chart: Month wise sales trend
- Pie Chart: Region wise sales %
- Column Chart: Region + Performance breakdown

## Skills Demonstrated
- Data entry and formatting
- Format as Table
- 9 Excel formulas
- 3 Pivot Tables
- 3 Chart types
- Multi-level drill down analysis
