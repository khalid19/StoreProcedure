USE [DENTALERP]
GO

/****** Object:  StoredProcedure [dbo].[GetPatientBill]    Script Date: 08/29/2016 11:04:10 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[GetPatientBill]
@PatientCode nvarchar(50),
@FromDate datetime,
@ToDate datetime

as
begin
select
P.Name,PM.Charge,pm.DiscountAmount,PM.TotalCharge,PM.Due,pm.Paid,PM.PaymentType
from Patient as P

inner join PaymentMethod as PM

on P.PatientId=PM.PatientId
 WHERE (P.PatientCode = @PatientCode OR @PatientCode = '')          
          AND  PM.Date BETWEEN (@FromDate) AND  (@ToDate)  


end
GO


