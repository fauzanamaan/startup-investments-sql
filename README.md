# Startup Investments Analysis

SQL queries on startup funding data: the most-funded companies, the most-funded companies that closed, and a closer look at clean technology.

**Queries:** [sql/queries.sql](sql/queries.sql) · **Full completed document:** [project-pdf/startup-investments.pdf](project-pdf/startup-investments.pdf)

This is a milestone project from the Global Career Accelerator program. The scenario and data come from the program. It is not affiliated with Crunchbase or done for any investment firm.

## Context

The scenario is set at a global venture capital firm, from the point of view of a strategic advisor using company funding data to judge which kinds of startups are worth backing.

## Data

One table, `crunchbase.companies`: one row per company, over 27,000 rows. The queries use the company name, main market category, status (operating, ipo, acquired or closed) and total funding in US dollars.

## Tools and skills

- SQL: `WHERE` with `IS NOT NULL`, `AND` and `OR`
- Parentheses to control how `AND` and `OR` combine
- Pattern matching with `ILIKE` and `%` wildcards
- `ORDER BY` and `LIMIT` for top-N lists

## Approach

1. Listed the 12 most-funded companies, leaving out rows with no funding figure.
2. Listed the 12 most-funded companies that have closed.
3. Counted cleantech companies, then closed cleantech companies.
4. LevelUp: counted cleantech companies with "solar", "power" or "energy" in their name.

## Key findings

- **Clearwire is the most-funded company**, with about 5.7 times the funding of the 12th company on the list. Only 1 of the top 12 has an acquired status.
- **Abound Solar is the most-funded company that closed**, with $510,000,000 in funding. Six of the 12 most-funded closed companies are cleantech.
- **898 companies are in the cleantech category**, and 7.02% of them have closed.
- **275 cleantech companies** have "solar", "power" or "energy" in their name.
- **Cleantech looks high-risk and high-reward rather than a bad investment.** Success depends on planning how the technology will scale efficiently and at a reasonable cost.

## Running the queries

The queries cannot be re-run outside the program. The data exists only in the Global Career Accelerator SQL app, and this repo does not include it.

`sql/queries.sql` holds the queries exactly as written in the completed document, in order, each labeled with its task. Tasks without a query (1B to 1D and 2B to 2E) were written answers.

## Repo structure

```
startup-investments-sql/
├── sql/
│   └── queries.sql                the queries, labeled by task
└── project-pdf/
    └── startup-investments.pdf    full completed document with written answers
```
