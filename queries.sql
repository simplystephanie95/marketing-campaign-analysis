-- Marketing Campaign Analysis Project
-- Author: Stephanie Korad

-- 1. Overall conversion rate

SELECT 
    COUNT(*) AS total_customers,
    COUNT(CASE WHEN Response = 1 THEN 1 END) AS total_conversions,
    COUNT(CASE WHEN Response = 1 THEN 1 END) * 1.0 / COUNT(*) AS conversion_rate
FROM marketing_data;


-- 2. Conversion rate by income group

SELECT 
    CASE 
        WHEN Income IS NULL THEN 'Unknown'
        WHEN Income < 30000 THEN 'Low Income'
        WHEN Income BETWEEN 30000 AND 60000 THEN 'Medium Income'
        ELSE 'High Income'
    END AS income_group,

    COUNT(*) AS total_customers,
    COUNT(CASE WHEN Response = 1 THEN 1 END) AS conversions,
    COUNT(CASE WHEN Response = 1 THEN 1 END) * 1.0 / COUNT(*) AS conversion_rate

FROM marketing_data

GROUP BY 
    CASE 
        WHEN Income IS NULL THEN 'Unknown'
        WHEN Income < 30000 THEN 'Low Income'
        WHEN Income BETWEEN 30000 AND 60000 THEN 'Medium Income'
        ELSE 'High Income'
    END

ORDER BY conversion_rate DESC;


-- 3. Conversion rate by spending behaviour

SELECT 
    CASE 
        WHEN (MntWines + MntFruits + MntMeatProducts + MntFishProducts + MntSweetProducts + MntGoldProds) < 500 THEN 'Low spender'
        WHEN (MntWines + MntFruits + MntMeatProducts + MntFishProducts + MntSweetProducts + MntGoldProds) BETWEEN 500 AND 1500 THEN 'Medium spender'
        ELSE 'High spender'
    END AS spending_group,

    COUNT(*) AS total_customers,

    COUNT(CASE WHEN Response = 1 THEN 1 END) AS conversions,

    COUNT(CASE WHEN Response = 1 THEN 1 END) * 1.0 / COUNT(*) AS conversion_rate

FROM marketing_data

GROUP BY 
    CASE 
        WHEN (MntWines + MntFruits + MntMeatProducts + MntFishProducts + MntSweetProducts + MntGoldProds) < 500 THEN 'Low spender'
        WHEN (MntWines + MntFruits + MntMeatProducts + MntFishProducts + MntSweetProducts + MntGoldProds) BETWEEN 500 AND 1500 THEN 'Medium spender'
        ELSE 'High spender'
    END

ORDER BY conversion_rate DESC;