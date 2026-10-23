-- Queries copied as written from the completed document. Each was run on its own in the Global Career Accelerator SQL app, so they are not meant to run as one script.

-- Task 1A
SELECT name, category_code, status, funding_total_usd
FROM crunchbase.companies
WHERE funding_total_usd IS NOT NULL
ORDER BY funding_total_usd DESC
LIMIT 12

-- Task 2A
SELECT name, category_code, status, funding_total_usd
FROM crunchbase.companies
WHERE funding_total_usd IS NOT NULL AND status = 'closed'
ORDER BY funding_total_usd DESC
LIMIT 12

-- Task 3A
SELECT name, category_code, status
FROM crunchbase.companies
WHERE category_code = 'cleantech'

-- Task 3B
SELECT name, category_code, status
FROM crunchbase.companies
WHERE category_code = 'cleantech' AND status = 'closed'

-- LevelUp A
SELECT name, category_code, status, funding_total_usd
FROM crunchbase.companies
WHERE category_code = 'cleantech'
  AND (name ILIKE '%solar%'
  OR name ILIKE '%power%'
  OR name ILIKE '%energy%')
