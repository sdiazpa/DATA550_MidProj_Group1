# DATA 550 Midterm Project

> **Impact of Modified Milk Formula on Infant Severe Acute Malnutrition**
>
> Author: Santino Diaz-Palma, Dongsoo Lee, Victoria Ngo

## Table of contents

-   [General Info](#general-info)
-   [Usage](#usage)
-   [Repository Contents](#repository-contents)
    -   [Final Report](#final-report)
    -   [Code](#code)
    -   [Data](#data)
    -   [Output](#output)

## General Info {#general-info}

The base dataset is from a [**randomized trial**](https://pubmed.ncbi.nlm.nih.gov/30807589/) testing whether a modified milk formula (f75) improves outcomes for children with severe acute malnutrition (first 6-months of data from year-long study).

## Usage {#usage}

Please run the "make" command in the RStudio terminal to generate the rendered report (report.html) and its associated components.

## Repository Contents {#repository-contents}

### *Final Report* {#final-report}

The final report (report.Rmd) can be found in the root directory. An HTML report file (report.html) will be **generated after running the "make" command in RStudio's terminal console**.

The report contains a demographics table summarizing baseline characteristics of study participants, a table tracking changes of mid-upper arm circumference (MUAC) and weight changes over time, a figure of boxplots for continuous variables, and a figure of boxplots for MUAC and weight variables over time.

### *Code* {#code}

Code for generating the tables, figures, and rendering the .Rmd report can be found in the "Code" subdirectory.

### *Data* {#data}

The original data from [**this study**](https://pubmed.ncbi.nlm.nih.gov/30807589/) and the data dictionary can be found in the "Data" subdirectory.

### *Output* {#output}

Once the codes for generating the tables and figures are run, the outputs will appear in the "Output" subdirectory.
