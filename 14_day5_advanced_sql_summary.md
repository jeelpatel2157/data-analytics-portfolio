# Day 5 - Advanced SQL Mastery
**Date:** August 26, 2026
**Focus:** CTEs, UNION, Query Optimization

## Topics Explored

### 1. CTEs (Common Table Expressions)
**What:** Temporary named queries
**Why:** Cleaner than subqueries, more readable, reusable

**Queries:**
- Basic CTE (emp_totals)
- CTE with WHERE clause
- Multiple CTEs (joined)
- CTE with Window Functions
- Recursive CTE (generate sequences)

**Key Learning:**
WITH name AS (
SELECT col FROM table
)
SELECT * FROM name;


### 2. UNION (Combine Results)
**What:** Merge results from multiple queries
**Why:** Combine different data sources, create unified reports

**Queries:**
- Simple UNION (high + low sales)
- UNION with different structures
- UNION ALL (keeps duplicates)

**Key Learning:**

SELECT col FROM table1
UNION
SELECT col FROM table2;


### 3. Query Optimization & Indexes
**What:** Make queries run 1000x faster
**Why:** Companies demand performance; careers made on this!

**Concepts:**
- Indexes (like book's table of contents)
- EXPLAIN (see query execution)
- Single column indexes
- Composite indexes

**Queries:**
- EXPLAIN without index (slow)
- CREATE INDEX
- EXPLAIN with index (fast)
- Multiple indexes
- Composite indexes

**Impact:**
- Query: 1 second → 0.001 seconds
- Performance: 1000x faster!
- Career value: VERY HIGH! 💰

## Skills Developed
✅ Advanced query construction
✅ Data combination techniques
✅ Performance optimization mindset
✅ Database indexing strategy
✅ Professional-level SQL

## Real-World Applications
- Combining sales data from multiple stores (UNION)
- Calculating running totals and ranks (CTEs + Window Functions)
- Optimizing slow database queries (Indexes)
- Improving application performance
## What Companies Pay For
These 3 topics are EXACTLY what employers want:
1. **CTEs** - Clean, professional code
2. **UNION** - Data integration skills
3. **Optimization** - Performance expertise

## Next Topics (Available)
- String Functions
- Date Functions
- Aggregate Functions
- Advanced JOINs
- And more!
