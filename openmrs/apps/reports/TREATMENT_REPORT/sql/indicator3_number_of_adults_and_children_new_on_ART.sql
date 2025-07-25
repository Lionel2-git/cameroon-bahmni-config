SELECT '(TX_NEW) Number of adults and children newly enrolled on antiretroviral therapy (ART)' AS '-'  ,
            TREATMENT_Indicator3('#startDate#','#endDate#', 0, 1, 0, 'M', 0) AS '<1 M',
            TREATMENT_Indicator3('#startDate#','#endDate#', 0, 1, 0, 'F', 0) AS '<1 F',
            TREATMENT_Indicator3('#startDate#','#endDate#', 1, 4, 1, 'M', 0) AS '1-4 M',
            TREATMENT_Indicator3('#startDate#','#endDate#', 1, 4, 1, 'F', 0) AS '1-4 F',
            TREATMENT_Indicator3('#startDate#','#endDate#', 5, 9, 1, 'M', 0) AS '5-9 M',
            TREATMENT_Indicator3('#startDate#','#endDate#', 5, 9, 1, 'F', 0) AS '5-9 F',
            TREATMENT_Indicator3('#startDate#','#endDate#', 10, 14, 1, 'M', 0) AS '10-14 M',
            TREATMENT_Indicator3('#startDate#','#endDate#', 10, 14, 1, 'F', 0) AS '10-14 F',
            TREATMENT_Indicator3('#startDate#','#endDate#', 15, 19, 1, 'M', 0) AS '15-19 M',
            TREATMENT_Indicator3('#startDate#','#endDate#', 15, 19, 1, 'F', 0) AS '15-19 F',
            TREATMENT_Indicator3('#startDate#','#endDate#', 20, 24, 1, 'M', 0) AS '20-24 M',
            TREATMENT_Indicator3('#startDate#','#endDate#', 20, 24, 1, 'F', 0) AS '20-24 F',
            TREATMENT_Indicator3('#startDate#','#endDate#', 25, 29, 1, 'M', 0) AS '25-29 M',
            TREATMENT_Indicator3('#startDate#','#endDate#', 25, 29, 1, 'F', 0) AS '25-29 F',
            TREATMENT_Indicator3('#startDate#','#endDate#', 30, 34, 1, 'M', 0) AS '30-34 M',
            TREATMENT_Indicator3('#startDate#','#endDate#', 30, 34, 1, 'F', 0) AS '30-34 F',
            TREATMENT_Indicator3('#startDate#','#endDate#', 35, 39, 1, 'M', 0) AS '35-39 M',
            TREATMENT_Indicator3('#startDate#','#endDate#', 35, 39, 1, 'F', 0) AS '35-39 F',
            TREATMENT_Indicator3('#startDate#','#endDate#', 40, 44, 1, 'M', 0) AS '40-44 M',
            TREATMENT_Indicator3('#startDate#','#endDate#', 40, 44, 1, 'F', 0) AS '40-44 F',
            TREATMENT_Indicator3('#startDate#','#endDate#', 45, 49, 1, 'M', 0) AS '45-49 M',
            TREATMENT_Indicator3('#startDate#','#endDate#', 45, 49, 1, 'F', 0) AS '45-49 F',
            TREATMENT_Indicator3('#startDate#','#endDate#', 50, 200, 1, 'M', 0) AS '>=50 M',
            TREATMENT_Indicator3('#startDate#','#endDate#', 50, 200, 1, 'F', 0) AS '>=50 F',
            0 AS 'Unknown M',
            0 AS 'Unknown F';