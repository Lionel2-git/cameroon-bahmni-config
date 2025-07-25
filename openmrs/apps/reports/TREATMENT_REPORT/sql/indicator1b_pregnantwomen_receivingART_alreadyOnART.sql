SELECT 'Already on ART' AS 'Title',
            TREATMENT_Indicator1b('#startDate#','#endDate#', 0, 10, 0, 'F') AS '<10 years',
            TREATMENT_Indicator1b('#startDate#','#endDate#', 10, 14, 1, 'F') AS '10-14 years',
            TREATMENT_Indicator1b('#startDate#','#endDate#', 15, 19, 1, 'F') AS '15-19 years',
            TREATMENT_Indicator1b('#startDate#','#endDate#', 20, 24, 1, 'F') AS '20-24 years',
            TREATMENT_Indicator1b('#startDate#','#endDate#', 25, 29, 1, 'F') AS '25-29 years',
            TREATMENT_Indicator1b('#startDate#','#endDate#', 30, 34, 1, 'F') AS '30-34 years',
            TREATMENT_Indicator1b('#startDate#','#endDate#', 35, 39, 1, 'F') AS '35-39 years',
            TREATMENT_Indicator1b('#startDate#','#endDate#', 40, 44, 1, 'F') AS '40-44 years',
            TREATMENT_Indicator1b('#startDate#','#endDate#', 45, 49, 1, 'F') AS '45-49 years',
            TREATMENT_Indicator1b('#startDate#','#endDate#', 50, 200, 1, 'F') AS '>=50 years',
            TREATMENT_Indicator1b('#startDate#','#endDate#', 0, 0, 0, 'F') AS 'Unknown Age'; 