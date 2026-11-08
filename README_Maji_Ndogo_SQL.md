# Data-Driven Journey in Maji Ndogo \| SQL Project

A hands-on SQL exploration of water-access data from **Maji Ndogo**,
using structured queries to inspect datasets, understand water-source
categories, identify long service queues, and examine water-quality and
well-pollution records.

This project demonstrates how SQL can be used to move from raw tables to
focused questions that support data investigation and decision-making.

## Project Overview

The project begins by exploring the available database tables and
reviewing key datasets. It then uses filtering and conditional logic to
investigate specific aspects of water access and water-source
conditions.

The SQL script works with the following tables:

-   `location`
-   `visits`
-   `water_source`
-   `data_dictionary`
-   `water_quality`
-   `well_pollution`

## Business Questions Explored

The queries in this project investigate questions such as:

1.  **What tables and data are available?**\
    Lists the database tables and previews records from the main
    datasets.

2.  **What types of water sources are recorded?**\
    Retrieves the distinct-looking source-type field values for
    inspection.

3.  **Where are queues especially long?**\
    Filters visit records where `time_in_queue` is greater than 500.

4.  **What do selected water-source records look like?**\
    Retrieves water-source records for a specified set of source IDs.

5.  **Which household tap records meet the selected quality criteria?**\
    Filters `water_quality` records where the subjective quality score
    is 10, visit count is greater than 1, and source type is
    `tap_in_home`.

6.  **What well-pollution records need closer inspection?**\
    Reviews the `well_pollution` table and filters records with a
    `Clean` result and a biological value greater than 0.01.

## SQL Skills Demonstrated

  -----------------------------------------------------------------------
  Skill                               How it is used
  ----------------------------------- -----------------------------------
  Database exploration                `SHOW TABLES` to inspect the
                                      database structure

  Data inspection                     `SELECT *` to review table records

  Column selection                    Selecting specific fields such as
                                      `type_of_water_source`

  Filtering                           `WHERE` clauses to isolate relevant
                                      records

  Multiple conditions                 Combining criteria with `AND`

  Set-based filtering                 `IN` to retrieve records matching a
                                      list of source IDs

  Data investigation                  Applying targeted conditions to
                                      water-quality and pollution records
  -----------------------------------------------------------------------

## Example Queries

**Finding visits with long queues**

``` sql
SELECT *
FROM visits
WHERE time_in_queue > 500;
```

**Filtering water-quality records**

``` sql
SELECT *
FROM water_quality
WHERE subjective_quality_score = 10
  AND visit_count > 1
  AND type_of_water_source = 'tap_in_home';
```

**Investigating well-pollution records**

``` sql
SELECT *
FROM well_pollution
WHERE results = 'Clean'
  AND biological > 0.01;
```

## Tools & Technologies

-   **SQL** --- querying and exploring relational data.
-   **Relational database concepts** --- working with tables, columns,
    and records.

The uploaded project script contains SQL statements. It does not specify
the database platform or version, so those details are intentionally not
assumed here.

## Repository Structure

``` text
Data-Driven-Journey-in-Maji-Ndogo/
├── README.md
└── Data-Driven Journey in Maji Ndogo.sql
```

## How to Run

1.  Clone or download this repository.
2.  Open the `.sql` file in a SQL client connected to the Maji Ndogo
    database.
3.  Ensure the database contains the tables referenced in the script.
4.  Execute the statements in sequence and review the returned records.

**Note:** The SQL script expects the relevant database and tables to
already exist. The repository contains the query script, not the
underlying dataset.

## Project Scope

This is an exploratory SQL project focused on reviewing records and
applying targeted filters. The current script demonstrates data
inspection and conditional querying; it does not include documented
joins, aggregations, data cleaning updates, or a final analytical
report.

## What This Project Demonstrates

Through this project, I practiced translating data questions into SQL
queries, navigating a relational dataset, applying multiple filtering
conditions, and examining records related to water access and water
quality.

I am continuing to build my skills in SQL and data analytics, with a
focus on using data to investigate practical problems and communicate
findings clearly.

------------------------------------------------------------------------

*Thank you for taking the time to review my work. Feedback and
suggestions are welcome.*
