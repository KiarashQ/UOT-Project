select * from Hospital
select * from Dr
select * from Reception

select Hospital.HospitalID,
       Hospital.HospitalName,
	   Dr.DrName,
	   Dr.MedicalSpeciality,
	   Reception.PatientID

	   from Hospital inner join Dr on Hospital.HospitalID=Dr.HospitalID
	   inner join Reception on Dr.DrID=Reception.DrID