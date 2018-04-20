# Sql_Clr_SaveEmail
MS SQL Server CLR Function for Saving Email as .eml file

Directly storing .eml file with SQL is not possible (as per my knowledge). So we have created a CLR function which will create .eml file with given values.

# Sample Usage

DECLARE @result VARCHAR(max)

EXEC @result = dbo.SaveEmail             
             @fromEmail ='<From Email>'                 --(Required)
             ,@toEmail ='<To Email1>,<To Email2>'       --(Required)  -- Can add more than one emailed with comma separated
             ,@ccEmail ='<ccEmail>'                     --(Optional)  -- Can add more than one emailed with comma separated
             ,@bccEmail ='<bccEmail>'                   --(Optional)  -- Can add more than one emailed with comma separated
             ,@mailBody ='Mail Body'                    --(Required)  
             ,@mailSubject ='Mail Subject'              --(Required)
             ,@fileName = 'SampleEmail'                 --(Optional)  -- If user didn’t provided the name system will assign GUID       

SELECT @result

Sample Output : “C:\Users\MSSQLSERVER\AppData\Local\Temp\SampleEmail.eml”
