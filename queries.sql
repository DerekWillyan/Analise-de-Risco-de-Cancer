### 1. Ranking com Base no Risco de Desenvolvimento

SELECT
    `Cancer Type`,
    ROUND(`Male Risk Development Percentage` * 100,2) AS `Male Development Risk (%)`,
    ROUND(`Female Risk Development Percentage`*100,2) AS `Female Development Risk (%)`
FROM
    CancerRisk
ORDER BY
    `Male Risk Development Percentage` DESC,
    `Female Risk Development Percentage` DESC;

### 2. Ranking com Base na Razão de Desenvolvimento

SELECT
    `Cancer Type`,
    `Male Risk Development Ratio(One in ____ Person)` AS `Male Development Ratio`,
    `Female Risk Development Ratio(One in ____ Person)` AS `Female Development Ratio`
FROM
    CancerRisk
ORDER BY
    `Male Risk Development Ratio(One in ____ Person)` ASC,
    `Female Risk Development Ratio(One in ____ Person)` ASC;

### 3. Ranking com Base no Risco de Mortalidade

SELECT
    `Cancer Type`,
    ROUND(`Male Risk Dying Percentage`*100,2) AS `Male Mortality Risk (%)`,
    ROUND(`Female Risk Dying Percentage`*100,2) AS `Female Mortality Risk (%)`
FROM
    CancerRisk
ORDER BY
    `Male Risk Dying Percentage` DESC,
    `Female Risk Dying Percentage` DESC;

### 4. Ranking com Base na Razão de Mortalidade

SELECT
    `Cancer Type`,
    `Male Risk Dying Ratio(One in ____ Person)` AS `Male Mortality Ratio`,
    `Female Risk Dying Ratio(One in ____ Person)` AS `Female Mortality Ratio`
FROM
    CancerRisk
ORDER BY
    `Male Risk Dying Ratio(One in ____ Person)` ASC,
    `Female Risk Dying Ratio(One in ____ Person)` ASC;
    
### 5. Maior e Menor Risco de Desenvolvimento

(
    SELECT
        `Cancer Type`,
        ROUND(`Male Risk Development Percentage` * 100, 2) AS `Male Development Risk (%)`,
        ROUND(`Female Risk Development Percentage` * 100, 2) AS `Female Development Risk (%)`,
        'Highest Risk' AS `Risk Category`
    FROM
        CancerRisk
    ORDER BY
        `Male Risk Development Percentage` DESC,
        `Female Risk Development Percentage` DESC
    LIMIT 1
)
UNION
(
    SELECT
        `Cancer Type`,
        ROUND(`Male Risk Development Percentage` * 100, 2) AS `Male Development Risk (%)`,
        ROUND(`Female Risk Development Percentage` * 100, 2) AS `Female Development Risk (%)`,
        'Lowest Risk' AS `Risk Category`
    FROM
        CancerRisk
    ORDER BY
        `Male Risk Development Percentage` ASC,
        `Female Risk Development Percentage` ASC
    LIMIT 1
);

### 6. Maior e Menor Risco de Mortalidade

(
    SELECT
        `Cancer Type`,
        ROUND(`Male Risk Dying Percentage` * 100, 2) AS `Male Mortality Risk (%)`,
        ROUND(`Female Risk Dying Percentage` * 100, 2) AS `Female Mortality Risk (%)`,
        'Highest Risk' AS `Risk Category`
    FROM
        CancerRisk
    ORDER BY
        `Male Risk Dying Percentage` DESC,
        `Female Risk Dying Percentage` DESC
    LIMIT 1
)
UNION
(
    SELECT
        `Cancer Type`,
        ROUND(`Male Risk Dying Percentage` * 100, 2) AS `Male Mortality Risk (%)`,
        ROUND(`Female Risk Dying Percentage` * 100, 2) AS `Female Mortality Risk (%)`,
        'Lowest Risk' AS `Risk Category`
    FROM
        CancerRisk
    ORDER BY
        `Male Risk Dying Percentage` ASC,
        `Female Risk Dying Percentage` ASC
    LIMIT 1
);


